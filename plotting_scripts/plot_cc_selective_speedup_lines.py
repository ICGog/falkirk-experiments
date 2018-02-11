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

def get_runtime(runtime_file_path, num_proc, ft_types):
    runtime_file = open(runtime_file_path)
    proc_tag = "_" + num_proc + "_procs"
    runtimes = []
    for row in runtime_file.readlines():
        keep = False
        for ft_type in ft_types:
            if ft_type in row:
                keep = True
        if proc_tag in row and keep:
#        if proc_tag in row and ft_type in row:
            fields = [x.strip() for x in row.split(' ')]
            runtime = int(fields[2])
            runtimes.append(runtime)
    runtime_file.close()
    return runtimes

# def plot_speedups(plot_file_name, speedups, num_procs):
#     if FLAGS.paper_mode:
#         plt.figure(figsize=(3, 2))
#         set_paper_rcs()
#     else:
#         plt.figure()
#         set_rcs()

#     plt.plot(num_procs, speedups, label='Naiad SRS with selective', color='b', marker='o',
#              mfc='none', markersize=4, mec='b', mew=1.0, lw=1.0)

#     plt.axhline(1.0, linestyle=':', color='k', lw=0.5)

#     max_y_val = 2.51
#     plt.ylim(0, max_y_val)
#     plt.ylabel("Speedup vs. Naiad SRS w/o selective")
#     yticks = []
#     x = 0
#     while x < max_y_val:
#         yticks.append(x)
#         x += 0.25
#     plt.yticks(yticks)
#     plt.xlim(num_procs[0], num_procs[-1])
#     plt.xticks(num_procs, [str(x) for x in num_procs])
#     plt.xlabel("Number of computers")
#     plt.legend(loc='upper right', frameon=False, handlelength=1.5,
#                handletextpad=0.1, numpoints=1)

#     plt.savefig(plot_file_name, format='pdf',
#                 bbox_inches='tight', pad_inches=0.01)


def plot_speedups(plot_file_name, base_runtime, runtimes, num_procs):
    colors = {'Naiad SRS w/o selective':'y',
              'Naiad SRS':'b',
              'Naiad SRS eager + span': 'c',
              'Naiad SRS eager': 'm'}
    markers = {'Naiad SRS w/o selective':'x',
               'Naiad SRS':'o',
               'Naiad SRS eager + span': 'v',
               'Naiad SRS eager': '<'}
    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 1.66))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()

    for setup, setup_runtimes in runtimes.iteritems():
        data = []
        for num_proc, proc_runtimes in setup_runtimes.iteritems():
            proc_speedups = [base_runtime / x for x in proc_runtimes]
            data.append((num_proc, (np.mean(proc_speedups), np.std(proc_speedups))))
        data.sort()
        sort_num_roc, avg_std = zip(*data)
        speedups, stds = zip(*avg_std)
        print speedups, stds
        plt.errorbar(num_procs, speedups, stds,
                     label=setup, color=colors[setup], marker=markers[setup],
                     mfc='none', markersize=4, mec=colors[setup], mew=1.0,
                     lw=1.0)

    max_y_val = 5.01
    plt.ylim(0, max_y_val)
    plt.ylabel("Speedup vs.\n Naiad SRS 5 computers")
    yticks = []
    x = 0
    while x < max_y_val:
        yticks.append(x)
        x += 0.5
    plt.yticks(yticks)
    plt.xlim(num_procs[0], num_procs[-1])
    plt.xticks(num_procs, [str(x) for x in num_procs])
    plt.xlabel("Number of computers")
    plt.legend(loc='upper left', frameon=False, handlelength=1.5,
               handletextpad=0.1, numpoints=1)

    plt.savefig(plot_file_name, format='pdf',
                bbox_inches='tight', pad_inches=0.003)



def plot_runtimes(plot_file_name, runtimes, num_procs):
    colors = {'Naiad SRS w/o selective':'y',
              'Naiad SRS':'b',
              'Naiad SRS eager + span': 'c',
              'Naiad SRS eager': 'm'}
    markers = {'Naiad SRS w/o selective':'x',
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
        print run_times, stds
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
    # runtimes = {'Naiad SRS w/o selective':{},
    #             'Naiad SRS':{},
    #             'Naiad SRS eager + span':{},
    #             'Naiad SRS eager':{}}
#    runtimes = {'Naiad SRS w/o selective':{}, 'Naiad SRS':{}, 'Naiad SRS eager':{}}
    runtimes = {'Naiad SRS w/o selective':{}, 'Naiad SRS':{}}
    for num_proc in num_procs:
        for setup in runtimes.keys():
            runtimes[setup][int(num_proc)] = []
    for num_proc in num_procs:
        runtimes['Naiad SRS w/o selective'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                                              num_proc,
                                                                              ['length_1_sync1', 'length_1_sync2', 'length_1_sync3' 'length_1_sync4' 'length_1_sync5']))
        runtimes['Naiad SRS'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                                num_proc,
                                                                ['sync_after_epoch_0_incremental']))

        # runtimes['Naiad SRS eager'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
        #                                                                      num_proc,
        #                                                                      'caching_output_eagerly'))
        # runtimes['Naiad SRS eager + span'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
        #                                                                      num_proc,
        #                                                                      'threads_eagerly'))
    base = np.mean(runtimes['Naiad SRS'][int(num_procs[0])])
    # speedups = []
    # for num_proc in num_procs:
    #     avg_srs_selective = np.mean(runtimes['Naiad SRS'][int(num_proc)])
    #     avg_srs = np.mean(runtimes['Naiad SRS w/o selective'][int(num_proc)])
    #     speedups.append(avg_srs / avg_srs_selective)

    for num_proc in num_procs:
        avg_srs_selective = np.mean(runtimes['Naiad SRS'][int(num_proc)])
        avg_srs = np.mean(runtimes['Naiad SRS w/o selective'][int(num_proc)])
        print (avg_srs - avg_srs_selective) / avg_srs * 100.0

    plot_speedups('cc_selective_speedup_lines.pdf', base, runtimes, [int(x) for x in num_procs])
#    print runtimes
#    plot_runtimes('cc_selective_runtime_lines.pdf', runtimes, [int(x) for x in num_procs])


if __name__ == '__main__':
  main(sys.argv)
