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
gflags.DEFINE_string('log_paths', '', ', separated list of path to the log files.')
gflags.DEFINE_string('labels', '', ', separated list of labels.')
gflags.DEFINE_string('file_format', 'pdf', 'Plot file format')


def get_action_duration(log_path):
    print '--------------- ' + log_path + ' ----------------'
    durations = []
    logfile = open(log_path)
    for row in logfile.readlines():
        fields = [x.strip() for x in row.split(' ')]
        if len(fields) > 5 and fields[0] == 'Time':
            time = int(fields[5])
            if time > 2000:
                print row
            durations.append(time)
    logfile.close()
    return durations


def plot_cdf(plot_file_name, cdf_vals, label_axis, labels, bin_width=1000):
    colors = ['b', 'r', 'g', 'c', 'm', 'y', 'k']
    if FLAGS.paper_mode:
        plt.figure(figsize=(3.33, 2.22))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()

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
                                      histtype="step", color=colors[index])
        # hack to add line to legend
        # plt.plot([-100], [-100], label=labels[index],
        #          color=colors[index], linestyle='solid', lw=1.0)
        # hack to remove vertical bar
        patches[0].set_xy(patches[0].get_xy()[:-1])

        index += 1

    plt.xlim(0, max_cdf_val)
    plt.xticks(range(0, max_cdf_val, 100),
               [str(x) for x in range(0, max_cdf_val, 100)])
    plt.ylim(0, 1.0)
    plt.yticks(np.arange(0.0, 1.01, 0.2),
               [str(x) for x in np.arange(0.0, 1.01, 0.2)])

    plt.xlabel(label_axis)
    plt.legend(loc=4, frameon=False, handlelength=2.5, handletextpad=0.2)

    plt.savefig(plot_file_name + "." + FLAGS.file_format,
                format=FLAGS.file_format, bbox_inches="tight")

def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    log_paths = FLAGS.log_paths.split(',')
    labels = FLAGS.labels.split(',')
    durations = []
    for log_path in log_paths:
        durations.append(get_action_duration(log_path))
    plot_cdf('replay_cdf', durations, 'Duration [ms]', labels, bin_width=1)


if __name__ == '__main__':
  main(sys.argv)
