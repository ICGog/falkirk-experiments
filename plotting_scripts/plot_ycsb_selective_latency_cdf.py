# Copyright (c) 2017, Ionel Gog

import csv
import gflags
import math
import matplotlib
matplotlib.use("agg")
import os, sys
import matplotlib.pyplot as plt
from collections import defaultdict
from utils import *

FLAGS = gflags.FLAGS
gflags.DEFINE_bool('paper_mode', False, 'Adjusts the size of the plots.')
gflags.DEFINE_bool('presentation_mode', False, 'Adjusts the size of the plots.')
gflags.DEFINE_string('log_paths', '', ', separated list of path to the log files.')
gflags.DEFINE_string('labels', '', ', separated list of labels.')
gflags.DEFINE_bool('exactly_once', False, 'Plot exactly once results.')
gflags.DEFINE_integer('delay_epoch', 5, 'Delay ad event every delay_epoch epochs.')
gflags.DEFINE_string('file_format', 'pdf', 'Plot file format')


def get_latencies(log_path, offset):
    print '--------------- ' + log_path + ' ----------------'
    latencies = []
    times = []
    windowTimes = set({})
    logfile = open(log_path)
    lastwindowTime = 0
    for row in logfile.readlines():
        fields = [x.strip() for x in row.split(' ')]
        windowTimes.add(int(fields[0]))
        if len(windowTimes) < 20 or len(windowTimes) % FLAGS.delay_epoch == (FLAGS.delay_epoch - 1):
            continue
        lastWindowTime = int(fields[0])
        times.append(int(fields[0]))
        latency = int(fields[1])
        if latency - offset > 0:
            latencies.append(latency - offset)
        else:
            latencies.append(0)
    while times[-1] == lastWindowTime:
        times = times[:-1]
        latencies = latencies[:-1]
    logfile.close()
    return latencies


def plot_cdf(plot_file_name, cdf_vals, label_axis, labels, bin_width=1000):
    colors = {'Naiad + SRS + Selective': 'r', 'Naiad + Falkirk + Selective': 'r', 'Drizzle' : 'c', 'Naiad + SRS' : 'm', 'Naiad + Falkirk' : 'm', 'Flink' : 'b'}

    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
        set_paper_rcs()
    elif FLAGS.presentation_mode:
        plt.figure()
        set_presentation_rcs()
    else:
        plt.figure()
        set_rcs()

    graph_lw = 1.0
    if FLAGS.presentation_mode:
        graph_lw = 2.5

    max_cdf_val = 0
    index = 0
    for vals in cdf_vals:
        print "Statistics for %s" % (labels[index])
        avg = np.mean(vals)
        print "AVG: %f" % (avg)
        median = np.median(vals)
        print "MEDIAN: %f" % (median)
        min_val = np.min(vals)
        print "MIN: %ld" % (min_val)
        max_val = np.max(vals)
        max_cdf_val = max(max_val, max_cdf_val)
        print "MAX: %ld" % (max_val)
        stddev = np.std(vals)
        print "STDDEV: %f" % (stddev)
        print "PERCENTILES:"
        perc1 = np.percentile(vals, 1)
        print "  1st: %f" % (perc1)
        perc10 = np.percentile(vals, 10)
        print " 10th: %f" % (perc10)
        perc25 = np.percentile(vals, 25)
        print " 25th: %f" % (perc25)
        perc50 = np.percentile(vals, 50)
        print " 50th: %f" % (perc50)
        perc75 = np.percentile(vals, 75)
        print " 75th: %f" % (perc75)
        perc90 = np.percentile(vals, 90)
        print " 90th: %f" % (perc90)
        perc99 = np.percentile(vals, 99)
        print " 99th: %f" % (perc99)

        bin_range = max_val - min_val + 1
        num_bins = bin_range / bin_width
        (n, bins, patches) = plt.hist(vals, bins=num_bins, log=False,
                                      normed=True, cumulative=True,
                                      histtype="step", color=colors[labels[index]],
                                      lw=graph_lw)
        # hack to add line to legend
        plt.plot([-100], [-100], label=labels[index],
                 color=colors[labels[index]], linestyle='solid', lw=graph_lw)
        # hack to remove vertical bar
        patches[0].set_xy(patches[0].get_xy()[:-1])

        index += 1

    if FLAGS.exactly_once:
        lat_increment = 300
    else:
        lat_increment = 200

    max_x_val = max_cdf_val
    if FLAGS.presentation_mode:
        max_x_val = 1292
    if max_x_val != max_cdf_val:
        print 'Attention: max_x_val and max_cdf_val differ'

    plt.xlim(0, max_x_val)
    plt.xticks(range(0, max_x_val, lat_increment),
               [str(x) for x in range(0, max_x_val, lat_increment)])
    plt.ylim(0, 1.0)
    # plt.yticks(np.arange(0.0, 1.01, 0.2),
    #            [str(x) for x in np.arange(0.0, 1.01, 0.2)])
    plt.ylabel("CDF of final event latencies")
    plt.xlabel(label_axis)
    if FLAGS.presentation_mode:
        plt.legend(bbox_to_anchor=(0.43, 0.01), loc=3, frameon=False, handlelength=1.5, handletextpad=0.2)
    else:
        plt.legend(loc=4, frameon=False, handlelength=1.5, handletextpad=0.2)

    plt.savefig(plot_file_name + "." + FLAGS.file_format,
                format=FLAGS.file_format, bbox_inches="tight")

def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    log_paths = FLAGS.log_paths.split(',')
    labels = FLAGS.labels.split(',')
    latencies = []
    index = 0
    flink = []
    drizzle = []
    naiad = []
    naiad_selective = []
    for log_path in log_paths:
        if 'Flink' in labels[index]:
            flink = flink + get_latencies(log_path, 0)
        elif 'Drizzle' in labels[index]:
            drizzle = drizzle + get_latencies(log_path, 1000)
        elif 'NaiadSelective' in labels[index]:
            naiad_selective = naiad_selective + get_latencies(log_path, 1000)
        elif 'Naiad' in labels[index]:
            naiad = naiad + get_latencies(log_path, 1000)
        else:
            print("Unkown label %s" % (labels[index]))
        index = index + 1
    new_labels = []
    if len(flink) > 0:
        new_labels.append("Flink")
        latencies.append(flink)
    if len(drizzle) > 0:
        new_labels.append("Drizzle")
        latencies.append(drizzle)
    if len(naiad_selective) > 0:
        if FLAGS.paper_mode:
            new_labels.append("Naiad + SRS + Selective")
        else:
            new_labels.append("Naiad + Falkirk + Selective")
        latencies.append(naiad_selective)
    if len(naiad) > 0:
        if FLAGS.paper_mode:
            new_labels.append("Naiad + SRS")
        else:
            new_labels.append("Naiad + Falkirk")
        latencies.append(naiad)

    plot_cdf('ycsb_latency_cdf', latencies, 'Final event latency [ms]', new_labels, bin_width=1)


if __name__ == '__main__':
  main(sys.argv)
