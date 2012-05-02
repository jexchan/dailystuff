#!/usr/bin/env python
"""
sevenup

Created by Clayton Parker
http://www.claytron.com
"""

import os
import sys
import subprocess

# the directories that we want to scan
dirs = sys.argv[1:]
if not dirs:
    cur_dir = os.path.abspath(os.curdir)
    print "Using the current directory (%s) since none have been specified." % cur_dir
    dirs = [cur_dir]
# we will walk each dir structure looking for working copies
to_up = []
ta = to_up.append
for directory in dirs:
    directory = os.path.expanduser(directory)
    # TODO os.walk doesn't follow symlinks...
    for current_dir, directories, files in os.walk(directory):
        if '.svn' in directories:
            ta(current_dir)
            # delete the subdirs to stop recursion
            del directories[:]
number_of_updates = len(to_up)
print "Updating %s working copies...\n" % number_of_updates
scall = subprocess.call
# loop through all the paths and svn up them
for upper in to_up:
    print "\n%s" % upper
    scall(('svn up %s' % upper).split())
# what just happened? oh...
print """
*******
summary
*******

The following %s items have been updated:

""" % number_of_updates
for upper in to_up:
    print upper
print