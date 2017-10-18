# Copyright (c) 2016, Ionel Gog

import csv
import gflags
import math
import matplotlib
matplotlib.use("agg")
import os, sys
import matplotlib.pyplot as plt
from utils import *
from box_and_whisker import *

FLAGS = gflags.FLAGS
gflags.DEFINE_bool('paper_mode', False, 'Adjusts the size of the plots.')
gflags.DEFINE_string('falkirk_input_latency_file_path', '',
                     'Path to the file containing input latencies.')
gflags.DEFINE_string('falkirk_fast_latency_file_path', '',
                     'Path to the file containing fast latencies.')
gflags.DEFINE_string('stw_input_latency_file_path', '',
                     'Path to the file containing input latencies.')
gflags.DEFINE_string('stw_fast_latency_file_path', '',
                     'Path to the file containing fast latencies.')
gflags.DEFINE_integer('start_time', 0, 'Start time')
gflags.DEFINE_integer('end_time', sys.maxint, 'End time')


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


def plot_latencies(latencies, labels):
    colors = ['y', 'm', 'b', 'm', 'b', 'm', 'b']
    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()

    ax = plt.gca()
    bp = percentile_box_plot(ax, latencies, color=colors, box_lw=1.0,
                             median_lw=1.5)

    plt.plot(-1, -1, label='Naiad STW', color='m', lw=1.0)
    plt.plot(-1, -1, label='Naiad SRS', color='b', lw=1.0)

    for i in range(2, len(latencies), 2):
        plt.axvline(i + 0.5, ls='-', color='k')

    ax.legend(frameon=False, loc="upper center", ncol=6,
              bbox_to_anchor=(0.0, 1.04, 1.0, 0.1), handletextpad=0.2,
              columnspacing=0.2)

    plt.xlim(0.5, 2 * len(labels) + 0.5)
    plt.xticks([x * 2 + 1.5 for x in range(0, len(labels))], labels)
    plt.ylim(0, 25000)
    plt.yticks(range(0, 25001, 4000), range(0, 26, 4))
    plt.ylabel("Latency [sec]")
    plt.savefig("complex_latency_falkirk_vs_stw.pdf",
                format="pdf", bbox_inches="tight", pad_inches=0.003)



def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    latencies = []
    (stable_latencies, event_times) = get_input_latency(FLAGS.stw_input_latency_file_path);
    latencies.append(stable_latencies)
    (stable_latencies, event_times) = get_input_latency(FLAGS.falkirk_input_latency_file_path);
    latencies.append(stable_latencies)
    (fast_latencies, slow_staleness, cc_staleness, event_times) = get_fast_latency(FLAGS.stw_fast_latency_file_path);
    latencies.append(fast_latencies)
    (fast_latencies, slow_staleness, cc_staleness, event_times) = get_fast_latency(FLAGS.falkirk_fast_latency_file_path);
    latencies.append(fast_latencies)

    labels = ["Input stable", "Query"]
    plot_latencies(latencies, labels)


if __name__ == '__main__':
  main(sys.argv)
