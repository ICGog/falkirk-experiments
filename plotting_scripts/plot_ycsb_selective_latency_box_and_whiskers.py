# Copyright (c) 2017, Ionel Gog

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
gflags.DEFINE_string('log_paths', '', ', separated list of path to the log files.')
gflags.DEFINE_string('labels', '', ', separated list of labels.')
gflags.DEFINE_bool('exactly_once', False, 'Plot exactly once results.')
gflags.DEFINE_integer('delay_epoch', 5, 'Delay ad event every delay_epoch epochs.')


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


def plot_latencies(plot_file_name, latencies, labels):
#    colors = {'Naiad + SRS + Selective': 'r', 'Drizzle' : 'c', 'Naiad + SRS' : 'm', 'Flink' : 'b'}
    colors = ['b', 'm', 'r']
    if FLAGS.paper_mode:
        plt.figure(figsize=(1.5, 1))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()

    max_cdf_val = 0
    index = 0
    for vals in latencies:
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


    ax = plt.gca()
    bp = percentile_box_plot(ax, latencies, color=colors)

    plt.plot(-1, -1, label='Naiad + SRS', color='m', lw=1.0)
    plt.plot(-1, -1, label='Naiad + SRS + Selective', color='r', lw=1.0)

    plt.legend(loc="upper right", frameon=False, handlelength=2.0, handletextpad=0.2,)
    # ax.legend(frameon=False, loc="upper center", ncol=6,
    #           bbox_to_anchor=(0.0, 1.04, 1.0, 0.1), handletextpad=0.2,
    #           columnspacing=0.2)

    plt.xlim(0.5, len(labels) + 0.5)
    plt.xticks([x + 1.0 for x in range(0, len(labels))], labels)

    plt.ylim(0, 1400)
    plt.yticks(range(0, 1401, 200), range(0, 1401, 200))
    plt.ylabel("Final event latency [ms]")

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
    if len(naiad) > 0:
        new_labels.append("Naiad + SRS")
        latencies.append(naiad)
    if len(naiad_selective) > 0:
        new_labels.append("Naiad + SRS + Selective")
        latencies.append(naiad_selective)

    plot_latencies('ycsb_latency_box_and_whiskers', latencies, new_labels)


if __name__ == '__main__':
  main(sys.argv)
