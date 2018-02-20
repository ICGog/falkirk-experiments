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
gflags.DEFINE_bool('presentation_mode', False, 'Adjusts the size of the plots.')
gflags.DEFINE_string('input_latency_file_path', '',
                     'Path to the file containing input latencies.')
gflags.DEFINE_string('fast_latency_file_path', '',
                     'Path to the file containing fast latencies.')
gflags.DEFINE_string('controller_file_path', '',
                     'Path to the controller file.')
gflags.DEFINE_integer('start_time', 0, 'Start time')
gflags.DEFINE_integer('end_time', sys.maxint, 'End time')
gflags.DEFINE_string('file_format', 'pdf', 'Plot file format')
gflags.DEFINE_bool('workers_paused', True, 'Plot up to workers paused.')
gflags.DEFINE_bool('rollback_computed', True, 'Plot up to rollback computed.')
gflags.DEFINE_bool('processors_recovered', True, 'Plot up to processors recovered.')
gflags.DEFINE_bool('plot_until_end', True, 'Plot until end.')

def get_rollback_events(input_file_path):
    controller_file = open(input_file_path)
    workers_paused = []
    workers_failed = []
    workers_rollback = []
    worker_recovered = []
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
        elif fields[1] == 'P':
            # Processor recovered
            worker_recovered.append(int(fields[8]) / 1000)
    return (workers_failed, workers_paused, workers_rollback, worker_recovered)


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
                   (workers_failed, workers_paused, workers_rollback, workers_recovered)):
    if FLAGS.paper_mode:
        plt.figure(figsize=(8, 2))
        set_paper_rcs()
    elif FLAGS.presentation_mode:
        plt.figure(figsize=(12, 6))
        set_presentation_rcs()
    else:
        plt.figure()
        set_rcs()

    last_worker_pause = np.max(workers_paused)
    last_worker_rollback = np.max(workers_rollback)
    first_worker_failure = np.min(workers_failed)
    last_worker_recovered = np.max(workers_recovered)

    colors = {'fast':'c', 'input slow':'r', 'input cc':'y'}
    markers = {'fast':'^', 'input slow':'o', 'input cc':'+'}

    index = 0
    stable_event_times = []
    stable_latencies = []
    while index < len(event_times) and event_times[index] <= first_worker_failure:
        stable_event_times.append(event_times[index])
        stable_latencies.append(latencies[index])
        index += 1

    while FLAGS.workers_paused and index < len(event_times) and event_times[index] <= last_worker_pause:
        stable_event_times.append(event_times[index])
        stable_latencies.append(latencies[index])
        index += 1

    while FLAGS.rollback_computed and index < len(event_times) and event_times[index] <= last_worker_rollback:
        stable_event_times.append(event_times[index])
        stable_latencies.append(latencies[index])
        index += 1

    while FLAGS.processors_recovered and  index < len(event_times) and event_times[index] <= last_worker_recovered:
        stable_event_times.append(event_times[index])
        stable_latencies.append(latencies[index])
        index += 1

    while FLAGS.plot_until_end and index < len(event_times):
        stable_event_times.append(event_times[index])
        stable_latencies.append(latencies[index])
        index += 1

    index = 0
    query_event_times = []
    query_latencies = []
    while index < len(fast_event_times) and fast_event_times[index] <= first_worker_failure:
        query_event_times.append(fast_event_times[index])
        query_latencies.append(fast_latencies[index])
        index += 1

    while FLAGS.workers_paused and index < len(fast_event_times) and fast_event_times[index] <= last_worker_pause:
        query_event_times.append(fast_event_times[index])
        query_latencies.append(fast_latencies[index])
        index += 1

    while FLAGS.rollback_computed and index < len(fast_event_times) and fast_event_times[index] <= last_worker_rollback:
        query_event_times.append(fast_event_times[index])
        query_latencies.append(fast_latencies[index])
        index += 1

    while FLAGS.processors_recovered and index < len(fast_event_times) and fast_event_times[index] <= last_worker_recovered:
        query_event_times.append(fast_event_times[index])
        query_latencies.append(fast_latencies[index])
        index += 1

    while FLAGS.plot_until_end and index < len(fast_event_times):
        query_event_times.append(fast_event_times[index])
        query_latencies.append(fast_latencies[index])
        index += 1

    plt.plot(stable_event_times, [x / 1000.0 for x in stable_latencies],
             label='Input stable latency [sec]', color='y', marker='+',
             markersize=4, mfc='none', mec='y', mew=1.0, lw=1.0)

    plot_label = 'fast'
    plt.plot(query_event_times, [x / 1000.0 for x in query_latencies],
             label='Query latency [sec]', color=colors[plot_label],
             marker=markers[plot_label], mfc='none', markersize=4,
             mec=colors[plot_label], mew=1.0, lw=1.0)

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


    print first_worker_failure, last_worker_pause, last_worker_rollback

    separation_lw = 0.5
    if FLAGS.presentation_mode:
        separation_lw = 2.0

    plt.axvline(first_worker_failure, linestyle=':', color='k', lw=separation_lw)
    plt.annotate('First\nfailure', xy=(first_worker_failure - 100, 3),
                 xycoords='data', verticalalignment='left', ha='right')

    if FLAGS.workers_paused:
        plt.axvline(last_worker_pause, linestyle=':', color='k', lw=separation_lw)
        plt.annotate('Workers\npaused', xy=(last_worker_pause - 100, 5),
                     xycoords='data', verticalalignment='right', ha='right')
        if FLAGS.rollback_computed:
            plt.axvline(last_worker_rollback, linestyle=':', color='k', lw=separation_lw)
            plt.annotate('Rollback\ncomputed', xy=(last_worker_rollback + 100, 10),
                         xycoords='data', verticalalignment='left', ha='left')
            if FLAGS.processors_recovered:
                plt.axvline(last_worker_recovered, linestyle=':', color='k', lw=separation_lw)
                plt.annotate('Processors recovered', xy=(last_worker_recovered + 100, 13),
                             xycoords='data', verticalalignment='left', ha='left')

    plt.ylabel('Latency [sec]')
    if FLAGS.presentation_mode:
        plt.ylim(0, 18)
    else:
        plt.ylim(0, 16)
#    plt.yticks()
    plt.xlabel('Experiment time [sec]')

    plt.xlim(FLAGS.start_time, FLAGS.end_time)
    plt.xticks([x for x in range(FLAGS.start_time, FLAGS.end_time, 5000)],
               [str(x / 1000) for x in range(FLAGS.start_time, FLAGS.end_time, 5000)])
    plt.legend(loc='upper right', frameon=False, handlelength=1.5,
               handletextpad=0.1, numpoints=1)

    if FLAGS.paper_mode:
        plt.savefig(plot_file_name, format=FLAGS.file_format,
                    bbox_inches='tight', pad_inches=0.01)
    else:
        plt.savefig(plot_file_name, format=FLAGS.file_format,
                    bbox_inches='tight', pad_inches=0.05)


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    plot_latencies('complex_latency_timeline.' + FLAGS.file_format,
                   get_input_latency(FLAGS.input_latency_file_path),
                   get_fast_latency(FLAGS.fast_latency_file_path),
                   get_rollback_events(FLAGS.controller_file_path))
    # plot_latencies('complex_latency_timeline.pdf',
    #                get_input_latency(FLAGS.input_latency_file_path),
    #                get_fast_latency(FLAGS.fast_latency_file_path),
    #                ([], [], []))



if __name__ == '__main__':
  main(sys.argv)
