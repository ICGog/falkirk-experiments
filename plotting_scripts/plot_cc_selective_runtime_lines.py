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
gflags.DEFINE_string('runtime_file_path', '',
                     'Path to the runtime file.')
gflags.DEFINE_string("num_procs", '', 'Comma-separated list of procs')

def get_runtime(runtime_file_path, num_proc, ft_type):
    runtime_file = open(runtime_file_path)
    proc_tag = "_" + num_proc + "_procs"
    runtimes = []
    for row in runtime_file.readlines():
        if proc_tag in row and ft_type in row:
            fields = [x.strip() for x in row.split(' ')]
            runtime = int(fields[2])
            runtimes.append(runtime)
    runtime_file.close()
    return runtimes

def plot_runtimes(plot_file_name, runtimes, num_procs):
    colors = {'Naiad Sync':'y',
              'Naiad SRS':'b',
              'Naiad SRS eager + span': 'c',
              'Naiad SRS eager': 'm'}
    markers = {'Naiad Sync':'x',
               'Naiad SRS':'o',
               'Naiad SRS eager + span': 'v',
               'Naiad SRS eager': '<'}
    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()
    max_y_val = 0

    for setup, setup_runtimes in runtimes.iteritems():
        print setup
        print setup_runtimes
        data = []
        for num_proc, proc_runtimes in setup_runtimes.iteritems():
            max_y_val = max(max_y_val, np.max(proc_runtimes))
            data.append((num_proc, (np.mean(proc_runtimes), np.std(proc_runtimes))))
        data.sort()
        sort_num_roc, avg_std = zip(*data)
        run_times, stds = zip(*avg_std)
        print num_procs
        plt.errorbar(num_procs, run_times, stds,
                     label=setup, color=colors[setup], marker=markers[setup],
                     mfc='none', markersize=4, mec=colors[setup], mew=1.0, lw=1.0)

    plt.ylim(0, max_y_val + 1000)
    plt.ylabel("Runtime [sec]")
    plt.yticks([x for x in range(0, max_y_val + 1000, 300000)],
               [str(x / 1000) for x in range(0, max_y_val + 1000, 300000)])
    plt.xlim(num_procs[0], num_procs[-1])
    plt.xticks(num_procs, [str(x) for x in num_procs])
    plt.xlabel("Number of computers")
    plt.legend(loc='upper right', frameon=False, handlelength=1.5,
               handletextpad=0.1, numpoints=1)

#    leg = plt.legend(loc='upper right', handlelength=1.0, handletextpad=0.3)
#    fr = leg.get_frame()
#    fr.set_linewidth(0)
#    fr.set_fill(None)

    plt.savefig(plot_file_name, format='pdf',
                bbox_inches='tight', pad_inches=0.01)


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    num_procs = FLAGS.num_procs.split(',')
    runtimes = {'Naiad Sync':{},
                'Naiad SRS':{},
                'Naiad SRS eager + span':{},
                'Naiad SRS eager':{}}
#    runtimes = {'Naiad Sync':{}, 'Naiad SRS':{}, 'Naiad SRS eager':{}}
    for num_proc in num_procs:
        for setup in runtimes.keys():
            runtimes[setup][int(num_proc)] = []
    for num_proc in num_procs:
        runtimes['Naiad Sync'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                                 num_proc,
                                                                 'length_1_sync'))
        runtimes['Naiad SRS'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                                num_proc,
                                                                'length_1_incremental'))

        runtimes['Naiad SRS eager'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                                             num_proc,
                                                                             'caching_output_eagerly'))
        runtimes['Naiad SRS eager + span'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                                             num_proc,
                                                                             'threads_eagerly'))


    print runtimes
    plot_runtimes('cc_selective_runtime_lines.pdf', runtimes, [int(x) for x in num_procs])


if __name__ == '__main__':
  main(sys.argv)
