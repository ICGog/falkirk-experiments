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

def plot_slowdowns(plot_file_name, slowdowns, num_procs):
    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()

    plt.plot(num_procs, slowdowns, label='Naiad SRS', color='r', marker='o',
             mfc='none', markersize=4, mec='r', mew=1.0, lw=1.0)

    plt.axhline(1.0, linestyle=':', color='k', lw=0.5)

    max_y_val = 1.51
    plt.ylim(0, max_y_val)
    plt.ylabel("Slowdown vs. Naiad")
    yticks = []
    x = 0
    while x < max_y_val:
        yticks.append(x)
        x += 0.25
    plt.yticks(yticks)
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
    slowdowns = []
    for num_proc in num_procs:
        avg_srs = np.mean(runtimes['Naiad SRS'][int(num_proc)])
        avg_naiad = np.mean(runtimes['Naiad'][int(num_proc)])
        slowdowns.append(avg_srs / avg_naiad)
    print slowdowns
    plot_slowdowns('cc_slowdown_lines.pdf', slowdowns, [int(x) for x in num_procs])


if __name__ == '__main__':
  main(sys.argv)
