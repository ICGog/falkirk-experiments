# Copyright (c) 2017, Ionel Gog

import csv
from absl import app, flags
import math
import matplotlib
matplotlib.use("agg")
import os, sys
import matplotlib.pyplot as plt
from collections import defaultdict
from utils import *

FLAGS = flags.FLAGS
flags.DEFINE_bool('paper_mode', False, 'Adjusts the size of the plots.')
flags.DEFINE_bool('presentation_mode', False, 'Adjusts the size of the plots.')
flags.DEFINE_string('log_paths', '',
                    ', separated list of path to the log files.')
flags.DEFINE_string('labels', '', ', separated list of labels.')
flags.DEFINE_bool('exactly_once', False, 'Plot exactly once results.')
flags.DEFINE_integer('delay_epoch', 5,
                     'Delay ad event every delay_epoch epochs.')
flags.DEFINE_string('file_format', 'pdf', 'Plot file format')


def get_latencies(log_path, offset):
    print('--------------- ' + log_path + ' ----------------')
    latencies = []
    times = []
    windowTimes = set({})
    logfile = open(log_path)
    lastwindowTime = 0
    for row in logfile.readlines():
        fields = [x.strip() for x in row.split(' ')]
        windowTimes.add(int(fields[0]))
        if len(windowTimes) < 20 or len(windowTimes) % FLAGS.delay_epoch == (
                FLAGS.delay_epoch - 1):
            continue
        lastWindowTime = int(fields[0])
        times.append(int(fields[0]))
        latency = int(fields[1])
        if latency - offset > 0:
            latencies.append(latency - offset)
        else:
            latencies.append(0)
    while times[-1] == lastWindowTime:
        times = times[:-1]
        latencies = latencies[:-1]
    logfile.close()
    return latencies


def plot_cdf(plot_file_name, cdf_vals, label_axis, labels, bin_width=1000):
    colors = {
        'FW-N': 'r',
        'Falkirk Wheel': 'r',
        'Drizzle': 'c',
        'FW-N w/o Selective': 'y',
        'Falkirk Wheel w/o Selective': 'm',
        'Flink': 'b'
    }

    if FLAGS.paper_mode:
        plt.figure(figsize=(3.3, 1.1))
        set_paper_rcs()
    elif FLAGS.presentation_mode:
        plt.style.use('dark_background')
        plt.rcParams.update({
            "font.family": "calibri",
            "lines.color": "white",
            "patch.edgecolor": "white",
            "text.color": "white",
            "axes.facecolor": "#212121",
            "axes.edgecolor": "white",
            "axes.labelcolor": "white",
            "figure.facecolor": "#212121",
            "figure.edgecolor": "#212121",
            "savefig.facecolor": "#212121",
            "savefig.edgecolor": "#212121",
        })
        plt.figure()
        set_presentation_rcs()
    else:
        plt.figure()
        set_rcs()

    graph_lw = 1.0
    if FLAGS.presentation_mode:
        graph_lw = 2.5

    max_cdf_val = 0
    index = 0
    for vals in cdf_vals:
        print("Statistics for {}".format(labels[index]))
        avg = np.mean(vals)
        print("AVG: {}".format(avg))
        median = np.median(vals)
        print("MEDIAN: {}".format(median))
        min_val = np.min(vals)
        print("MIN: {}".format(min_val))
        max_val = np.max(vals)
        max_cdf_val = max(max_val, max_cdf_val)
        print("MAX: {}".format(max_val))
        stddev = np.std(vals)
        print("STDDEV: {}".format(stddev))
        print("PERCENTILES:")
        perc1 = np.percentile(vals, 1)
        print("  1st: {}".format(perc1))
        perc10 = np.percentile(vals, 10)
        print(" 10th: {}".format(perc10))
        perc25 = np.percentile(vals, 25)
        print(" 25th: {}".format(perc25))
        perc50 = np.percentile(vals, 50)
        print(" 50th: {}".format(perc50))
        perc75 = np.percentile(vals, 75)
        print(" 75th: {}".format(perc75))
        perc90 = np.percentile(vals, 90)
        print(" 90th: {}".format(perc90))
        perc99 = np.percentile(vals, 99)
        print(" 99th: {}".format(perc99))

        bin_range = max_val - min_val + 1
        num_bins = int(bin_range / bin_width)
        (n, bins, patches) = plt.hist(vals,
                                      bins=num_bins,
                                      log=False,
                                      density=True,
                                      cumulative=True,
                                      histtype="step",
                                      color=colors[labels[index]],
                                      lw=graph_lw)
        # hack to add line to legend
        plt.plot([-100], [-100],
                 label=labels[index],
                 color=colors[labels[index]],
                 linestyle='solid',
                 lw=graph_lw)
        # hack to remove vertical bar
        patches[0].set_xy(patches[0].get_xy()[:-1])

        index += 1

    if FLAGS.exactly_once:
        lat_increment = 300
    else:
        lat_increment = 200

    max_x_val = max_cdf_val
    if FLAGS.presentation_mode:
        max_x_val = 1292
    if max_x_val != max_cdf_val:
        print('Attention: max_x_val and max_cdf_val differ')

    plt.xlim(0, max_x_val)
    plt.xticks(range(0, max_x_val, lat_increment),
               [str(x) for x in range(0, max_x_val, lat_increment)])
    plt.ylim(0, 1.0)

    # plt.yticks(np.arange(0.0, 1.01, 0.2),
    #            [str(x) for x in np.arange(0.0, 1.01, 0.2)])
    plt.ylabel("CDF")
    y_ticks = []
    y_val = 0
    while y_val <= 1.0:
        y_ticks.append(y_val)
        y_val += 0.2
    y_ticks = 0, 0.2, 0.4, 0.6, 0.8, 1.0
    plt.yticks(y_ticks, [str(y) for y in y_ticks])
    plt.ylabel("CDF", labelpad=0.01)
    ax = plt.gca()
    #ax.yaxis.set_label_coords(-0.11, 0.4)

    plt.xlabel(label_axis)
    if FLAGS.presentation_mode:
        plt.legend(loc=4, frameon=False, handlelength=0.7, handletextpad=0.2)
    else:
        plt.legend(loc='lower right',
                   frameon=False,
                   handlelength=1.5,
                   handletextpad=0.2)

    plt.savefig(plot_file_name + "." + FLAGS.file_format,
                format=FLAGS.file_format,
                bbox_inches="tight")


def main(argv):
    try:
        argv = FLAGS(argv)
    except flags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    log_paths = FLAGS.log_paths.split(',')
    labels = FLAGS.labels.split(',')
    latencies = []
    index = 0
    flink = []
    drizzle = []
    naiad = []
    naiad_selective = []
    for log_path in log_paths:
        if 'Flink' in labels[index]:
            flink = flink + get_latencies(log_path, 0)
        elif 'Drizzle' in labels[index]:
            drizzle = drizzle + get_latencies(log_path, 1000)
        elif 'NaiadSelective' in labels[index]:
            naiad_selective = naiad_selective + get_latencies(log_path, 1000)
        elif 'Naiad' in labels[index]:
            naiad = naiad + get_latencies(log_path, 1000)
        else:
            print("Unkown label %s" % (labels[index]))
        index = index + 1
    new_labels = []
    if len(flink) > 0:
        new_labels.append("Flink")
        latencies.append(flink)
    if len(drizzle) > 0:
        new_labels.append("Drizzle")
        latencies.append(drizzle)
    if len(naiad_selective) > 0:
        if FLAGS.paper_mode:
            new_labels.append("FW-N")
        else:
            new_labels.append("Falkirk Wheel")
        latencies.append(naiad_selective)
    if len(naiad) > 0:
        if FLAGS.paper_mode:
            new_labels.append("FW-N w/o Selective")
        else:
            new_labels.append("Falkirk Wheel w/o Selective")
        latencies.append(naiad)

    plot_cdf('ysb_latency_cdf',
             latencies,
             'Response latency [ms]',
             new_labels,
             bin_width=1)


if __name__ == '__main__':
    app.run(main)
