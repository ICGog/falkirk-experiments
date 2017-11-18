# Copyright (c) 2016, Ionel Gog

import csv
import gflags
import math
import matplotlib
matplotlib.use("agg")
import os, sys
import matplotlib.pyplot as plt
import numpy as np
from utils import *
from matplotlib import pylab
from scipy.stats import scoreatpercentile
from box_and_whisker import *


FLAGS = gflags.FLAGS
gflags.DEFINE_bool('paper_mode', False, 'Adjusts the size of the plots.')
gflags.DEFINE_string('begin_tag', '', 'Name of begin the event')
gflags.DEFINE_string('end_tag', '', 'Name of end the event')
gflags.DEFINE_string('ftmanager_log_paths', '',
                     'Comma-separated list of paths to ftmanager log files.')
gflags.DEFINE_string("xlabels", '', 'list of xlabels')
gflags.DEFINE_string("xlabel_name", 'Number of processing vertices', 'xlabel')
gflags.DEFINE_integer('max_x', 10000, '')
gflags.DEFINE_integer('x_increment', 1000, '')

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


def plot_rollback_duration(durations, labels, colors):
    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()

#    ax = plt.gca()
#    bp = percentile_box_plot(ax, durations, color=colors)

    num_vertices = [int(x) for x in labels]
    mean_runtimes = []
    std_runtimes = []
    for duration in durations:
        perc90 = np.percentile(duration, 90)
        perc99 = np.percentile(duration, 99)
        avg = np.mean(duration)
        max_val = np.max(duration)
        print 'Divided by 795 ', avg / 759
        print perc90, perc99, max_val
        mean_runtimes.append(avg)
        std_runtimes.append(np.std(duration))

    plt.errorbar(num_vertices, mean_runtimes, std_runtimes,
                 color=colors[0], marker='o', mfc='none',
                 markersize=4, mec=colors[0], mew=1.0, lw=1.0)

    plt.xlim(0, FLAGS.max_x)
    plt.ylim(0, 5)
    plt.xticks([x for x in range(0, FLAGS.max_x + 1, FLAGS.x_increment)],
               rotation='45', ha='right')
    plt.yticks(range(0, 5000001, 1000000), range(0, 6, 1))
    plt.ylabel("Max span algorithm runtime [sec]")
    plt.xlabel(FLAGS.xlabel_name)
    plt.savefig("rollback_computation_lines.pdf",
                format="pdf", bbox_inches="tight")


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    manager_paths = FLAGS.ftmanager_log_paths.split(',')
    xlabels = FLAGS.xlabels.split(',')
    colors = ['b']
    durations = []
    for manager_path in manager_paths:
        if 'incremental' in manager_path:
            colors.append('r')
        elif 'differential' in manager_path:
            colors.append('b')
        durations.append(get_action_duration(manager_path, FLAGS.begin_tag, FLAGS.end_tag))
        print durations[-1]

    print len(durations)
    plot_rollback_duration(durations, xlabels, colors)

if __name__ == '__main__':
  main(sys.argv)
