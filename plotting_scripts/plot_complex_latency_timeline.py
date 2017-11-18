# Copyright (c) 2017, Ionel Gog

import csv
import gflags
import math
import matplotlib
matplotlib.use("agg")
import os, sys
import matplotlib.pyplot as plt
import numpy as np
from collections import defaultdict
from utils import *

FLAGS = gflags.FLAGS
gflags.DEFINE_bool('paper_mode', False, 'Adjusts the size of the plots.')
gflags.DEFINE_string('input_latency_file_path', '',
                     'Path to the file containing input latencies.')
gflags.DEFINE_string('fast_latency_file_path', '',
                     'Path to the file containing fast latencies.')
gflags.DEFINE_string('controller_file_path', '',
                     'Path to the controller file.')
gflags.DEFINE_integer('start_time', 0, 'Start time')
gflags.DEFINE_integer('end_time', sys.maxint, 'End time')


def get_rollback_events(input_file_path):
    controller_file = open(input_file_path)
    workers_paused = []
    workers_failed = []
    workers_rollback = []
    for row in controller_file.readlines():
        fields = [x.strip() for x in row.split(' ')]
        if fields[1] == 'WPR':
            # Workers paused
            workers_paused.append(int(fields[2]) / 1000)
        elif fields[1] == 'AFR':
            # Annount failure
            workers_failed.append(int(fields[2]) / 1000)
        elif fields[1] == 'RTF':
            # Restore to Frontier
            workers_rollback.append(int(fields[2]) / 1000)
    return (workers_failed, workers_paused, workers_rollback)


def get_input_latency(input_file_path):
    latency_file = open(input_file_path)
    latencies = []
    event_times = []
    for row in latency_file.readlines():
        if row[0] == 'C' and row[1] == 'S':
            fields = [x.strip() for x in row.split(' ')]
            timeMs = int(fields[4]) / 1000
            if timeMs < FLAGS.start_time or timeMs > FLAGS.end_time:
                continue;
            latency1Ms = float(fields[2])
            latency2Ms = float(fields[3])
#            latencies.append(latency2Ms)
#            event_times.append(timeMs)
        if row[0] == 'S' and row[1] == 'S':
            row = row[2:]
            fields = [x.strip() for x in row.split(' ')]
            timeMs = int(fields[3]) / 1000
            if timeMs < FLAGS.start_time or timeMs > FLAGS.end_time:
                continue;
            latency1Ms = float(fields[1])
            latency2Ms = float(fields[2])
#            latencies.append(latency2Ms)
#            event_times.append(timeMs)
        if row[0] == 'S' and row[1] == '[':
            fields = [x.strip() for x in row.split(' ')]
            timeMs = int(fields[3]) / 1000
            if timeMs < FLAGS.start_time or timeMs > FLAGS.end_time:
                continue;
            latencies.append(float(fields[2]))
            event_times.append(timeMs)
    latency_file.close()
    return (latencies, event_times)


def get_fast_latency(input_file_path):
    fast_latencies = []
    slow_staleness = []
    cc_staleness = []
    event_times = []
    latency_file = open(input_file_path)
    for row in latency_file.readlines():
        fields = [x.strip() for x in row.split(' ')]
        timeMs = int(fields[3]) / 1000
        if timeMs < FLAGS.start_time or timeMs > FLAGS.end_time:
                continue;
        latencyMs = int(fields[0])
        fast_latencies.append(latencyMs)
        slowStalenessMs = int(fields[1])
        slow_staleness.append(slowStalenessMs)
        ccStalenessMs = int(fields[2])
        cc_staleness.append(ccStalenessMs)
        event_times.append(timeMs)
    latency_file.close()
    return (fast_latencies, slow_staleness, cc_staleness, event_times)

def plot_latencies(plot_file_name, (latencies, event_times),
                   (fast_latencies, slow_staleness, cc_staleness, fast_event_times),
                   (workers_failed, workers_paused, workers_rollback)):
    colors = {'fast':'b', 'input slow':'r', 'input cc':'y'}
    markers = {'fast':'^', 'input slow':'o', 'input cc':'+'}

    plt.plot(event_times, [x / 1000.0 for x in latencies], label='Stable latency [sec]',
             color='y', marker='o', mfc='none', mec='y', mew=1.0, lw=1.0)

    plot_label = 'fast'
    plt.plot(fast_event_times, [x / 1000.0 for x in fast_latencies],
             label='Query latency [sec]', color=colors[plot_label],
             marker=markers[plot_label], mfc='none', mec=colors[plot_label],
             mew=1.0, lw=1.0)

    # plot_label = 'input slow'
    # plt.plot(event_times, [x / 1000.0 for x in slow_staleness],
    #          label='Slow staleness [sec]', color=colors[plot_label],
    #          marker=markers[plot_label], mfc='none', mec=colors[plot_label],
    #          mew=1.0, lw=1.0)

    # plot_label = 'input cc'
    # plt.plot(event_times, [x / 1000.0 for x in slow_staleness],
    #          label='CC staleness [sec]', color=colors[plot_label],
    #          marker=markers[plot_label], mfc='none', mec=colors[plot_label],
    #          mew=1.0, lw=1.0)

    duration = (FLAGS.end_time - FLAGS.start_time)
    rollback_computed_loc = float(workers_rollback[-1] - FLAGS.start_time) / float(duration)
    print rollback_computed_loc
    plt.axvspan(workers_failed[0], workers_paused[-1], lw=0, color='0.8')

    plt.annotate('', xy=(rollback_computed_loc, 0.0), xycoords='axes fraction',
                 xytext=(0, 350), textcoords='offset points',
                 arrowprops=dict(arrowstyle="-"), ha='left')


    plt.ylabel('Latency [sec]')
    plt.ylim(0, 10)
#    plt.yticks()
    plt.xlabel('Runtime [sec]')

    max_event_time = np.max(event_times)
    plt.xlim(FLAGS.start_time, max_event_time)
    plt.xticks([x for x in range(FLAGS.start_time, max_event_time, 5000)],
               [str(x / 1000) for x in range(FLAGS.start_time, max_event_time, 5000)])
    plt.legend(loc='upper right', frameon=False, handlelength=1.5,
               handletextpad=0.1, numpoints=1)

    plt.savefig(plot_file_name, format='pdf',
                bbox_inches='tight', pad_inches=0.01)


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    plot_latencies('complex_latency_timeline.pdf',
                   get_input_latency(FLAGS.input_latency_file_path),
                   get_fast_latency(FLAGS.fast_latency_file_path),
                   get_rollback_events(FLAGS.controller_file_path))


if __name__ == '__main__':
  main(sys.argv)