#!/usr/bin/env python2
# -*- coding: utf-8 -*-
#=======================================================================
#
# view_rnd.py
# -------------
# Accepts a file with random data (bytes) and generates a picture
# with the pixels representing the contents of the file.
#
# Note: This program requires the Python Imaging Library (PIL).
#
#
# Author: Joachim Strombergson
# Copyright (c) 2014, Secworks Sweden AB
# 
# Redistribution and use in source and binary forms, with or 
# without modification, are permitted provided that the following 
# conditions are met: 
# 
# 1. Redistributions of source code must retain the above copyright 
#    notice, this list of conditions and the following disclaimer. 
# 
# 2. Redistributions in binary form must reproduce the above copyright 
#    notice, this list of conditions and the following disclaimer in 
#    the documentation and/or other materials provided with the 
#    distribution. 
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS 
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE 
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF 
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#=======================================================================

#-------------------------------------------------------------------
# Imports.
#-------------------------------------------------------------------
from PIL import Image
import math
import random
import argparse


#-------------------------------------------------------------------
# Symbolic constants.
#-------------------------------------------------------------------
VERSION = '0.001 Beta'
GEN_X = 1024
GEN_Y = 1024


#-------------------------------------------------------------------
# gen_random_bytes()
#
# Generate an array with the given number of random bytes.
# Used for testing only.
#-------------------------------------------------------------------
def gen_random_bytes(num_bytes, verbose):
    values = []

    if verbose:
        print "Generating %d random values." % num_bytes

    values = [random.randint(0,255) for i in range(num_bytes)]
    return values


#-------------------------------------------------------------------
# gen_image()
#
# Generates an image based on the given arguments.
#-------------------------------------------------------------------
def gen_image(args):
    verbose = args.verbose

    if verbose:
        if args.infile:
            print "Will be generating an image based on the file %s" % ags.infile
        else:
            print "Will generate an image based on values from the Python random number generator."

    if args.infile:
        my_values = load_file(args.infile, verbose)
    else:
        my_values = gen_random_bytes(GEN_X * GEN_Y, verbose)

    dimension = int(math.sqrt(len(my_values)))

    if verbose:
        print "The generated image will have the dimension %d x %d pixels." % (dimension, dimension)

    # Create the actual image.
    my_pixels = [(data, data, data) for data in my_values]
    im = Image.new("RGB", (dimension, dimension))
    im.putdata(my_pixels)

    if args.show:
        im.show()


#-------------------------------------------------------------------
# main()
#-------------------------------------------------------------------
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--infile',
                        help='The file with random values used to generate the image.')

    parser.add_argument('-o', '--outfile',
                        help='The file the generated image will be written to. If no name is given infile.png will be used.')

    parser.add_argument('-v', '--verbose', action='store_true',
                        help='Enable verbose processing.')

    parser.add_argument('-t', '--test', action='store_true',
                        help='Perform test generation using the Python random generator.')

    parser.add_argument('-s', '--show', action='store_true',
                        help='Show the image generated.')

    parser.add_argument('--version', action='version', version=VERSION)

    args = parser.parse_args()

    if args.infile==None and not args.test:
        print "Error: No input file given and not in test mode."
        exit(1)

    gen_image(args)

    
#-------------------------------------------------------------------
# __name__
#
# Python name mangling thingy to run if called stand alone.
#-------------------------------------------------------------------
if __name__ == '__main__':
    main()

#=======================================================================
# EOF view_rnd.py
#=======================================================================
