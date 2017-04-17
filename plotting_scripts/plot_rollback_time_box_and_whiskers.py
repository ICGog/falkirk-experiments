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

    ax = plt.gca()
    bp = percentile_box_plot(ax, durations, color=colors)

    for duration in durations:
        perc90 = np.percentile(duration, 90)
        perc99 = np.percentile(duration, 99)
        max_val = np.max(duration)
        print perc90, perc99, max_val

#    plt.plot(-1, -1, label='Differential dataflow', color='b', lw=1.0)
#    plt.plot(-1, -1, label='Incremental', color='r', lw=1.0)

#    for i in range(2, len(durations), 2):
#        plt.axvline(i + 0.5, ls='-', color='k')

#    ax.legend(frameon=False, loc="upper center", ncol=6,
#              bbox_to_anchor=(0.0, 1.04, 1.0, 0.1), handletextpad=0.2,
#              columnspacing=0.2)

    #plt.errorbar(range(1, len(setups) + 1), [np.mean(x) for x in runtimes],
    #             yerr=[np.std(x) for x in runtimes], marker="x")
    plt.xlim(0.5, len(durations) + 0.5)
    plt.ylim(ymin=0, ymax=30)
#    plt.xticks([x * 2 + 1.5 for x in range(0, len(labels))], labels)
    plt.xticks([x * 1 + 1.5 for x in range(0, len(labels))], labels)
    plt.yticks(range(0, 10000001, 2000000), range(0, 11, 2))
    plt.ylabel("Rollback computation [sec]")
    plt.xlabel("Number of cores")
    plt.savefig("rollback_computation_box_whiskers.pdf",
                format="pdf", bbox_inches="tight")


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    manager_paths = FLAGS.ftmanager_log_paths.split(',')
    xlabels = FLAGS.xlabels.split(',')
    colors = ['k']
    durations = []
    for manager_path in manager_paths:
        if 'incremental' in manager_path:
            colors.append('b')
        elif 'differential' in manager_path:
            colors.append('r')
        durations.append(get_action_duration(manager_path, FLAGS.begin_tag, FLAGS.end_tag))

    print len(durations)
    plot_rollback_duration(durations, xlabels, colors)

if __name__ == '__main__':
  main(sys.argv)
