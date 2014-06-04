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
import random
import argparse


#-------------------------------------------------------------------
#-------------------------------------------------------------------
VERSION = '0.001 Beta'


#-------------------------------------------------------------------
# get_random_byte()
#
# Generate a random byte. Used for testing only.
#-------------------------------------------------------------------
def get_random_byte():
    return random.randint(0,255)


#-------------------------------------------------------------------
#-------------------------------------------------------------------
def old_stuff():
    verbose = True
    filename = "random_image.png"
    if verbose:
        print "Generating picture %s" % filename
    x_size = 1024
    y_size = 1024
    
    im = Image.new("RGB", (x_size, y_size))

    random_data = []
    for i in range(x_size * y_size):
        #random_data.append((random.randint(0,255), random.randint(0,255), random.randint(0,255)))
        data = get_random_byte()
        random_data.append((data, data, data))

    im.putdata(random_data)
    im.show()
    # im.save(filename)
    

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
        print "bajs!"

    print args
    exit(1)

    
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
