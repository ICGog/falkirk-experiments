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
gflags.DEFINE_string('file_format', 'pdf', 'Plot file format')

def get_runtime(runtime_file_path, num_proc, ft_type):
    runtime_file = open(runtime_file_path)
    proc_tag = "_" + num_proc + "_procs"
    runtimes = []
    for row in runtime_file.readlines():
        if proc_tag in row and ft_type in row:
            fields = [x.strip() for x in row.split(' ')]
            runtime = int(fields[1])
            runtimes.append(runtime)
    runtime_file.close()
    return runtimes

def plot_runtimes(out_file_name, runtimes, labels):
    if FLAGS.paper_mode:
        plt.figure(figsize=(3, 2))
        set_paper_rcs()
    else:
        plt.figure()
        set_rcs()

    colors = ['b', 'r', 'b', 'r', 'b', 'r', 'b', 'r', 'b', 'r', 'b', 'r', 'b', 'r', 'b', 'r', 'b', 'r', 'b']
    avg_runtimes = []
    std_runtimes = []
    max_runtime = 0
    for cat_runtimes in runtimes:
        max_runtime = max(max_runtime, np.max(cat_runtimes))
        avg_runtimes.append(np.mean(cat_runtimes))
        std_runtimes.append(np.std(cat_runtimes))

    width = 0.8
    gap = 0.2
    ind = np.arange(len(avg_runtimes))


    index = 0
    pos = gap
    for avg_runtime in avg_runtimes:
        print avg_runtime
        blabel = ""
        if index < 2:
            if index % 2 == 1:
                blabel="Naiar + SRS"
            else:
                blabel = "Naiad"
        plt.bar(pos, avg_runtime, width,
                color=colors[index], lw=0.5,
                yerr=std_runtimes[index], ecolor='k', capsize=3,
                error_kw={'linewidth': 0.5, 'mew': 0.5}, label=blabel)
        if index % 2 == 1:
            pos += width + gap
        else:
            pos += width
        index += 1

    plt.ylim(0, max_runtime + 1000)
    plt.ylabel("Runtime [sec]")
    plt.yticks([x for x in range(0, max_runtime + 1000, 20000)],
               [str(x / 1000) for x in range(0, max_runtime + 1000, 20000)])
    plt.xlim(0, gap + len(avg_runtimes) * width + len(avg_runtimes) / 2 * gap)
    plt.xticks([gap + x * (2 * width + gap) + width for x in range(0, len(avg_runtimes) / 2)],
               labels)
    plt.xlabel("Number of cores")
    leg = plt.legend(loc='upper right', handlelength=1.0, handletextpad=0.3)
    fr = leg.get_frame()
    fr.set_linewidth(0)
    fr.set_fill(None)

    plt.savefig(out_file_name, format=FLAGS.file_format,
                bbox_inches='tight', pad_inches=0.01)


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    num_procs = FLAGS.num_procs.split(',')
    runtimes = []
    for num_proc in num_procs:
        runtimes.append(get_runtime(FLAGS.runtime_file_path,
                                    num_proc,
                                    'noft'))
        runtimes.append(get_runtime(FLAGS.runtime_file_path,
                                    num_proc,
                                    'incremental'))


    plot_runtimes('cc_runtime_boxes' + FLAGS.file_format, runtimes, num_procs)


if __name__ == '__main__':
  main(sys.argv)
