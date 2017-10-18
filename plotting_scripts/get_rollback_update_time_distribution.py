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
gflags.DEFINE_string('begin_tag', '', 'Name of begin the event')
gflags.DEFINE_string('end_tag', '', 'Name of end the event')
gflags.DEFINE_string('ftmanager_log_path', '', 'Path to ftmanager log file.')

def get_action_duration(ftmanager_log_path, begin_tag, end_tag):
    logfile = open(ftmanager_log_path)
    last_begin_tag = -1
    seen_end_tag = True
    durations = []
    for row in logfile.readlines():
        fields = [x.strip() for x in row.split(':')]
        time = int(fields[0])
        if len(fields) < 2:
            continue
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


def main(argv):
    try:
        argv = FLAGS(argv)
    except gflags.FlagsError as e:
        print('%s\\nUsage: %s ARGS\\n%s' % (e, sys.argv[0], FLAGS))

    vals = get_action_duration(FLAGS.ftmanager_log_path, FLAGS.begin_tag, FLAGS.end_tag)
    avg = np.mean(vals)
    print "AVG: %f" % (avg)
    median = np.median(vals)
    print "MEDIAN: %f" % (median)
    min_val = np.min(vals)
    print "MIN: %ld" % (min_val)
    max_val = np.max(vals)
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


if __name__ == '__main__':
  main(sys.argv)
