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

def plot_speedups(plot_file_name, base_runtime, runtimes, num_procs):
    colors = {'Naiad':'r', 'Naiad SRS':'b'}
    markers = {'Naiad':'^', 'Naiad SRS':'o'}

    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
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
        print num_procs
        plt.errorbar(num_procs, speedups, stds,
                     label=setup, color=colors[setup], marker=markers[setup],
                     mfc='none', markersize=4, mec=colors[setup], mew=1.0,
                     lw=1.0)

#    plt.axhline(1.0, linestyle=':', color='k', lw=0.5)

    max_y_val = 5.01
    plt.ylim(0, max_y_val)
    plt.ylabel("Speedup vs. Naiad 5 computers")
    yticks = []
    x = 0
    while x < max_y_val:
        yticks.append(x)
        x += 1.0
    plt.yticks(yticks)
    plt.xlim(num_procs[0], num_procs[-1])
    plt.xticks(num_procs, [str(x) for x in num_procs])
    plt.xlabel("Number of computers")
    plt.legend(loc='upper left', frameon=False, handlelength=1.5,
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
    runtimes = {'Naiad':{}, 'Naiad SRS':{} }
    for num_proc in num_procs:
        for setup in runtimes.keys():
            runtimes[setup][int(num_proc)] = []
    for num_proc in num_procs:
        runtimes['Naiad'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                            num_proc,
                                                            'noft'))
        runtimes['Naiad SRS'][int(num_proc)].append(get_runtime(FLAGS.runtime_file_path,
                                                                num_proc,
                                                                'length_1_incremental'))
    speedups_srs = []
    speedups_naiad = []
    base = np.mean(runtimes['Naiad'][int(num_procs[0])])

    # for num_proc in num_procs:
    #     avg_srs = np.mean(runtimes['Naiad SRS'][int(num_proc)])
    #     avg_naiad = np.mean(runtimes['Naiad'][int(num_proc)])
    #     speedups_srs.append(base / avg_srs)
    #     speedups_naiad.append(base / avg_naiad)
    # speedups = [speedups_srs, speedups_naiad]
    plot_speedups('cc_speedup_lines.pdf', base, runtimes, [int(x) for x in num_procs])


if __name__ == '__main__':
  main(sys.argv)
