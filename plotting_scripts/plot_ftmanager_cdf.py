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
gflags.DEFINE_string('ftmanager_log_path', '',
                     'Path to the ftmanager log file.')
gflags.DEFINE_string('begin_tag', '', 'Name of begin the event')
gflags.DEFINE_string('end_tag', '', 'Name of end the event')
gflags.DEFINE_string('file_format', 'pdf', 'Plot file format')


def get_action_duration(ftmanager_log_path, begin_tag, end_tag):
    logfile = open(ftmanager_log_path)
    last_begin_tag = -1
    seen_end_tag = True
    durations = []
    for row in logfile.readlines():
        fields = [x.strip() for x in row.split(':')]
        time = int(fields[0])
        if fields[1] == begin_tag:
            if seen_end_tag is False:
                print "Two consecutive begin tags!"
            last_begin_tag = time
            seen_end_tag = False
        if fields[1] == end_tag:
            if last_begin_tag >= 0:
                seen_end_tag = True
                durations.append(time - last_begin_tag)
            else:
                print "Two consecutive end tags!"
    logfile.close()
    print "Durations count: ", len(durations)
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
    plt.xticks(range(0, max_cdf_val, 100000),
               [str(x / 1000) for x in range(0, max_cdf_val, 100000)])
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

    plot_cdf('ftmanager_cdf',
             [get_action_duration(FLAGS.ftmanager_log_path, FLAGS.begin_tag, FLAGS.end_tag)],
             'Duration [ms]', ["test"], bin_width=1000)


if __name__ == '__main__':
  main(sys.argv)
