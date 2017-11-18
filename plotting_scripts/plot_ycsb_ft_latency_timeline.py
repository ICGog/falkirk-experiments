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
gflags.DEFINE_string('log_paths', '', ', separated list of path to the log files.')
gflags.DEFINE_string('labels', '', ', separated list of labels.')

def get_latencies(log_path, offset):
    print '--------------- ' + log_path + ' ----------------'
    latencies = {}
    windowTimes = set({})
    logfile = open(log_path)
    lastIgnoredTime = 0
    for row in logfile.readlines():
        fields = [x.strip() for x in row.split(' ')]
        windowTime = int(fields[0])
        windowTimes.add(windowTime)
        if len(windowTimes) < 4:
            lastIgnoredTime = windowTime
            continue
        latency = int(fields[1])
        latOffset = 0
        if latency - offset > 0:
            latOffset = latency - offset
        curTime = windowTime - lastIgnoredTime
        if curTime in latencies:
            latencies[curTime] = max(latencies[curTime], latOffset)
        else:
            latencies[curTime] = latOffset
    logfile.close()
    keylist = latencies.keys()
    keylist.sort()
    times = []
    maxLatency = []
    for key in keylist:
        times.append(key)
        maxLatency.append(latencies[key])
    return (times, maxLatency)

def plot_latencies(plot_file_name, times, latencies, labels):
    colors = {'Naiad + SRS': 'r', 'Drizzle' : 'c', 'Spark' : 'b', 'Flink' : 'm'}
    markers = {'Naiad + SRS': '^', 'Drizzle' : '+', 'Spark' : 'v', 'Flink' : 'o'}
    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()
    max_y_val = 0
    max_x_val = 0

    index = 0
    for curTimes in times:
        max_y_val = max(max_y_val, np.max(latencies[index]))
        max_x_val = max(max_x_val, np.max(curTimes))
        plt.plot(curTimes, latencies[index], label=labels[index], color=colors[labels[index]],
                 marker=markers[labels[index]], mfc='none', mec=colors[labels[index]],
                 mew=1.0, lw=1.0)
        index = index + 1

    plt.ylabel('Latency [msec]')
    plt.ylim(0, max_y_val + 1000)
    plt.xlim(0, max_x_val)
    plt.xticks([x for x in range(0, max_x_val + 1, 30000)],
               [str(x / 1000) for x in range(0, max_x_val + 1, 30000)])
    plt.xlabel("Time [sec]")
    plt.legend(loc='upper right', frameon=False, handlelength=1.5,
               handletextpad=0.1, numpoints=1)

    plt.savefig("%s.pdf" % plot_file_name,
                format="pdf", bbox_inches="tight")


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))


    log_paths = FLAGS.log_paths.split(',')
    labels = FLAGS.labels.split(',')
    latencies = []
    index = 0
    latencies = []
    times = []
    for log_path in log_paths:
        offset = 0
        if 'Flink' in labels[index]:
            offset = 0
        else:
            offset = 10000
        (exTimes, exLatencies) = get_latencies(log_path, offset)
        times.append(exTimes)
        latencies.append(exLatencies)
        index = index + 1

    plot_latencies('ycsb_ft_latency_timeline', times, latencies, labels)


if __name__ == '__main__':
  main(sys.argv)
