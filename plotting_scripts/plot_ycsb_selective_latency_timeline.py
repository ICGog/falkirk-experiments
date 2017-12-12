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
gflags.DEFINE_bool('error_bars', False, 'Plot error bars.')
gflags.DEFINE_integer('start_time', 20, 'Plot start time.')
gflags.DEFINE_integer('end_time', 46, 'Plot end time.')
gflags.DEFINE_integer('x_time_increment', 2, 'x axis time increment.')

def get_latencies(log_path, offset, low_skip, high_skip):
    print '--------------- ' + log_path + ' ----------------'
    latencies = {}
    tlatencies = {}
    windowTimes = set({})
    logfile = open(log_path)
    lastIgnoredTime = 0
    for row in logfile.readlines():
        fields = [x.strip() for x in row.split(' ')]
        windowTime = int(fields[0])
        windowTimes.add(windowTime)
        if len(windowTimes) < low_skip or len(windowTimes) > high_skip:
            lastIgnoredTime = windowTime
            continue
        latency = int(fields[1])
        latOffset = 0
        if latency - offset > 0:
            latOffset = latency - offset
        curTime = windowTime - lastIgnoredTime
        if curTime in tlatencies:
            tlatencies[curTime].append(latOffset)
        else:
            tlatencies[curTime] = [latOffset]
    logfile.close()
    keylist = tlatencies.keys()
    keylist.sort()
    maxLatency = []
    for key in keylist:
        maxLatency.append(tlatencies[key])
    return maxLatency[:-1]


# def get_latencies(log_path, offset):
#     print '--------------- ' + log_path + ' ----------------'
#     latencies = {}
#     windowTimes = set({})
#     logfile = open(log_path)
#     lastIgnoredTime = 0
#     for row in logfile.readlines():
#         fields = [x.strip() for x in row.split(' ')]
#         windowTime = int(fields[0])
#         windowTimes.add(windowTime)
#         if len(windowTimes) < 3:
#             lastIgnoredTime = windowTime
#             continue
#         latency = int(fields[1])
#         latOffset = 0
#         if latency - offset > 0:
#             latOffset = latency - offset
#         curTime = windowTime - lastIgnoredTime
#         if curTime in latencies:
#             latencies[curTime] = max(latencies[curTime], latOffset)
#         else:
#             latencies[curTime] = latOffset
#     logfile.close()
#     keylist = latencies.keys()
#     keylist.sort()
#     times = []
#     maxLatency = []
#     for key in keylist:
#         times.append(key)
#         maxLatency.append(latencies[key])
#     return (times, maxLatency)

def plot_latencies(plot_file_name, latencies, labels):
    colors = {'Naiad + SRS + Selective': 'r', 'Drizzle' : 'c', 'Naiad + SRS' : 'm', 'Flink' : 'b'}
    markers = {'Naiad + SRS + Selective': '^', 'Drizzle' : '+', 'Naiad + SRS' : 'v', 'Flink' : 'o'}
    if FLAGS.paper_mode:
        plt.figure(figsize=(1.5, 1))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()
    max_y_val = 10000
    max_x_val = 0

    index = 0
    for lat in latencies:
#        max_y_val = max(max_y_val, np.max(latencies[index]))
#        max_x_val = max(max_x_val, np.max(curTimes))
        print len(latencies[index])
        lat_mean = []
        lat_std = []
        lat_max = []
        lat_min = []
        for lats in latencies[index]:
            lat_mean.append(np.mean(lats))
            lat_std.append(np.std(lats))
            lat_max.append(np.max(lats))
            lat_min.append(np.min(lats))

        if FLAGS.error_bars:
            plt.errorbar([x for x in range(FLAGS.start_time, FLAGS.end_time, 1)], lat_mean, lat_std,
                         label=labels[index], color=colors[labels[index]],
                         marker=markers[labels[index]], mfc='none',
                         mec=colors[labels[index]],
                         mew=0.7, lw=1.0, markersize=4)
        else:
            plt.plot([x for x in range(FLAGS.start_time, FLAGS.end_time, 1)],
                     lat_mean, label=labels[index], color=colors[labels[index]],
                     marker=markers[labels[index]], mfc='none', mec=colors[labels[index]],
                     mew=0.7, lw=1.0, markersize=4)

            # plt.plot([x for x in range(FLAGS.start_time, FLAGS.end_time, 1)],
            #          lat_min, label=labels[index], color=colors[labels[index]],
            #          marker=markers[labels[index]], mfc='none', mec=colors[labels[index]],
            #          mew=0.7, lw=1.0, markersize=4)
            # plt.plot([x for x in range(FLAGS.start_time, FLAGS.end_time, 1)],
            #          lat_max, label=labels[index], color=colors[labels[index]],
            #          marker=markers[labels[index]], mfc='none', mec=colors[labels[index]],
            #          mew=0.7, lw=1.0, markersize=4)


        # hack to add line to legend
        # plt.plot([-100], [-100], label=labels[index],
        #          color=colors[labels[index]], linestyle='solid', lw=1.0)

        index = index + 1
#    plt.yscale("log")
    plt.ylabel('Final event latency [ms]')
    max_y = 0
    if FLAGS.error_bars:
        max_y = 1201
    else:
        max_y = 1201
    plt.ylim(0, max_y - 1)
    # time_val = 50
    # y_ticks = []
    # while time_val <= max_y_val:
    #   y_ticks.append(time_val)
    #   y_ticks.append(time_val * 2)
    #   y_ticks.append(time_val * 5)
    #   time_val *= 10
    # y_ticks.append(time_val)


    y_ticks = [x for x in range(0, max_y, 200)]
    plt.yticks(y_ticks, [str(x) for x in y_ticks])

    plt.xticks([x for x in range(FLAGS.start_time, FLAGS.end_time, FLAGS.x_time_increment)],
               [str(x) for x in range(FLAGS.start_time, FLAGS.end_time, FLAGS.x_time_increment)])
    plt.xlabel("Time [sec]")
    plt.legend(loc='upper right', frameon=False, handlelength=2.5,
               handletextpad=0.2, numpoints=1)

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
    flink = []
    drizzle = []
    naiad_selective = []
    naiad = []
    index = 0
    for log_path in log_paths:
        offset = 0
        if 'Flink' in labels[index]:
            offset = 0
        else:
            offset = 1000
        if 'Flink' in labels[index]:
            lats = get_latencies(log_path, offset, FLAGS.start_time, FLAGS.end_time)
            if len(flink) < 1:
                flink = lats
            else:
                lindex = 0
                for lat in lats:
                    flink[lindex] = flink[lindex] + lat
                    lindex = lindex + 1
        elif 'Drizzle' in labels[index]:
            lats = get_latencies(log_path, offset, FLAGS.start_time, FLAGS.end_time)
            if len(drizzle) < 1:
                drizzle = lats
            else:
                lindex = 0
                for lat in lats:
                    drizzle[lindex] = drizzle[lindex] + lat
                    lindex = lindex + 1
        elif 'Naiad' in labels[index]:
            lats = get_latencies(log_path, offset, FLAGS.start_time, FLAGS.end_time)
            if 'Selective' in labels[index]:
                if len(naiad_selective) < 1:
                    naiad_selective = lats
                else:
                    lindex = 0
                    for lat in lats:
                        naiad_selective[lindex] = naiad_selective[lindex] + lat
                        lindex = lindex + 1
            else:
                if len(naiad) < 1:
                    naiad = lats
                else:
                    lindex = 0
                    for lat in lats:
                        naiad[lindex] = naiad[lindex] + lat
                        lindex = lindex + 1
        index = index + 1
    new_labels = []
    if len(flink) > 0:
        new_labels.append("Flink")
        latencies.append(flink)
    if len(drizzle) > 0:
        new_labels.append("Drizzle")
        latencies.append(drizzle)
    if len(naiad) > 0:
        new_labels.append("Naiad + SRS")
        latencies.append(naiad)
    if len(naiad_selective) > 0:
        new_labels.append("Naiad + SRS + Selective")
        latencies.append(naiad_selective)

    plot_latencies('ycsb_ft_latency_timeline', latencies, new_labels)


if __name__ == '__main__':
  main(sys.argv)
