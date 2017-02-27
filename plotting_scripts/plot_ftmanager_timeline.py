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


def get_action_duration(ftmanager_log_path, begin_tag, end_tag):
    logfile = open(ftmanager_log_path)
    last_begin_tag = -1
    seen_end_tag = True
    durations = []
    start_times = []
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
                start_times.append(last_begin_tag)
                durations.append(time - last_begin_tag)
                if time - last_begin_tag > 8000000:
                    print time
            else:
                print "Two consecutive end tags!"
    logfile.close()
    return (start_times, durations)


def plot_timeline(plot_file_name, all_x_vals, all_y_vals, labels, unit='sec'):
    colors = ['b', 'r', 'g', 'c', 'm', 'y', 'k']
    if FLAGS.paper_mode:
        plt.figure(figsize=(3.33, 2.22))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()
    index = 0
    max_x_val = 0
    max_y_val = 0
    for index in range(0, len(all_x_vals)):
        max_x_val = max(max_x_val, np.max(all_x_vals[index]))
        max_y_val = max(max_y_val, np.max(all_y_vals[index]))
        plt.plot(all_x_vals[index], all_y_vals[index],
                 label=labels[index], linestyle='none', marker='x',
                 color=colors[index])
    plt.ylabel('Rollback duration [s]')
    plt.ylim(0, max_y_val + 1)
    plt.yticks(range(0, max_y_val, 1000000),
               [str(y / 1000 / 1000) for y in range(0, max_y_val, 1000000)])

    plt.xlim(0, max_x_val)
    plt.xticks(range(0, max_x_val, 500000000),
               [str(x / 1000 / 1000) for x in range(0, max_x_val, 500000000)])

    plt.xlabel('Time [' + unit + ']')
    plt.legend(loc=1, frameon=False, handlelength=2.5, handletextpad=0.2)
    plt.savefig("%s.pdf" % plot_file_name,
                format="pdf", bbox_inches="tight")

def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    (start_times, durations) = get_action_duration(FLAGS.ftmanager_log_path, FLAGS.begin_tag, FLAGS.end_tag)
    plot_timeline('ftmanager_timeline', [start_times], [durations], ["test"])


if __name__ == '__main__':
  main(sys.argv)
