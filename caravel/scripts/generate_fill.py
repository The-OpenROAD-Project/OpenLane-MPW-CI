#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

#
# generate_fill.py ---
#
#    Run the fill generation on a layout top level.
#

import sys
import os
import re
import glob
import subprocess
import multiprocessing

def usage():
    print("Usage:")
    print("generate_fill.py <user_id_value> <project> <path_to_project> [-keep] [-test] [-dist]")
    print("")
    print("where:")
    print("    <user_id_value>   is a character string of eight hex digits, and")
    print("    <path_to_project> is the path to the project top level directory.")
    print("")
    print("  If <user_id_value> is not given, then it must exist in the info.yaml file.")
    print("  If <path_to_project> is not given, then it is assumed to be the cwd.")
    print("  If '-keep' is specified, then keep the generation script.")
    print("  If '-test' is specified, then create but do not run the generation script.")
    print("  If '-dist' is specified, then run distributed (multi-processing).")

    return 0

def makegds(file):
    # Procedure for multiprocessing run only:  Run the distributed processing
    # script to load a .mag file of one flattened square area of the layout,
    # and run the fill generator to produce a .gds file output from it.

    magpath = os.path.split(file)[0]
    filename = os.path.split(file)[1]

    myenv = os.environ.copy()
    myenv['MAGTYPE'] = 'mag'

    mproc = subprocess.run(['magic', '-dnull', '-noconsole',
		'-rcfile', rcfile, magpath + '/generate_fill_dist.tcl',
		filename],
		stdin = subprocess.DEVNULL,
		stdout = subprocess.PIPE,
		stderr = subprocess.PIPE,
		cwd = magpath,
		env = myenv,
		universal_newlines = True)
    if mproc.stdout:
        for line in mproc.stdout.splitlines():
            print(line)
    if mproc.stderr:
        print('Error message output from magic:')
        for line in mproc.stderr.splitlines():
            print(line)
        if mproc.returncode != 0:
            print('ERROR:  Magic exited with status ' + str(mproc.returncode))


if __name__ == '__main__':

    optionlist = []
    arguments = []

    debugmode = False
    keepmode = False
    testmode = False
    distmode = False

    for option in sys.argv[1:]:
        if option.find('-', 0) == 0:
            optionlist.append(option)
        else:
            arguments.append(option)

    if len(arguments) < 3:
        print("Wrong number of arguments given to generate_fill.py.")
        usage()
        sys.exit(1)

    user_id_value = arguments[0]
    project = arguments[1]
    user_project_path = arguments[2]
    
    try:
        # Convert to binary
        user_id_int = int('0x' + user_id_value, 0)
        user_id_bits = '{0:032b}'.format(user_id_int)

    except:
        print("User ID not recognized")
        usage()
        sys.exit(1)

    # if len(arguments) == 0:
    #     user_project_path = os.getcwd()
    # elif len(arguments) == 2:
    #     user_project_path = arguments[1]
    # elif user_project_path == None:
    #     user_project_path = arguments[0]
    # else:
    #     user_project_path = os.getcwd()


    if not os.path.isdir(user_project_path):
        print('Error:  Project path "' + user_project_path + '" does not exist or is not readable.')
        sys.exit(1)

    # Check for valid user ID
    # if not user_id_value:
    #     if os.path.isfile(user_project_path + '/info.yaml'):
    #         with open(user_project_path + '/info.yaml', 'r') as ifile:
    #             infolines = ifile.read().splitlines()
    #             for line in infolines:
    #                 kvpair = line.split(':')
    #                 if len(kvpair) == 2:
    #                     key = kvpair[0].strip()
    #                     value = kvpair[1].strip()
    #                     if key == 'project_id':
    #                         user_id_value = value.strip('"\'')
    #                         break

    if user_id_value:
        project_with_id = 'caravel_' + user_id_value
    else:
        print('Error:  No project_id found in info.yaml file.')
        sys.exit(1)

    if '-debug' in optionlist:
        debugmode = True
    if '-keep' in optionlist:
        keepmode = True
    if '-test' in optionlist:
        testmode = True
    if '-dist' in optionlist:
        distmode = True

    magpath = user_project_path + '/mag'
    rcfile = magpath + '/.magicrc'
    # pdk_root = os.getenv("PDK_ROOT")
    # rcfile = pdk_root + '/sky130A/libs.tech/magic/sky130A.magicrc'

    if not os.path.isfile(rcfile):
        rcfile = None

    topdir = user_project_path
    gdsdir = topdir + '/gds'
    hasgdsdir = True if os.path.isdir(gdsdir) else False

    ofile = open(magpath + '/generate_fill.tcl', 'w')

    print('#!/bin/env wish', file=ofile)
    print('drc off', file=ofile)
    print('tech unlock *', file=ofile)
    print('snap internal', file=ofile)
    print('box values 0 0 0 0', file=ofile)
    print('box size 700um 700um', file=ofile)
    print('set stepbox [box values]', file=ofile)
    print('set stepwidth [lindex $stepbox 2]', file=ofile)
    print('set stepheight [lindex $stepbox 3]', file=ofile)
    print('', file=ofile)
    print('set starttime [orig_clock format [orig_clock seconds] -format "%D %T"]', file=ofile)
    print('puts stdout "Started: $starttime"', file=ofile)
    print('', file=ofile)
    # Read the user project from GDS, as there is not necessarily a magic database file
    # to go along with this.
    # print('gds read ../gds/user_project_wrapper', file=ofile)
    # Now read the full caravel project
    # print('load ' + project + ' -dereference', file=ofile)
    print('gds readonly true', file=ofile)
    print('gds rescale false', file=ofile)
    print('gds read ../gds/' + project, file=ofile)
    print('select top cell', file=ofile)
    print('expand', file=ofile)
    if not distmode:
        print('cif ostyle wafflefill(tiled)', file=ofile)
    print('', file=ofile)
    print('set fullbox [box values]', file=ofile)
    print('set xmax [lindex $fullbox 2]', file=ofile)
    print('set xmin [lindex $fullbox 0]', file=ofile)
    print('set fullwidth [expr {$xmax - $xmin}]', file=ofile)
    print('set xtiles [expr {int(ceil(($fullwidth + 0.0) / $stepwidth))}]', file=ofile)
    print('set ymax [lindex $fullbox 3]', file=ofile)
    print('set ymin [lindex $fullbox 1]', file=ofile)
    print('set fullheight [expr {$ymax - $ymin}]', file=ofile)
    print('set ytiles [expr {int(ceil(($fullheight + 0.0) / $stepheight))}]', file=ofile)
    print('box size $stepwidth $stepheight', file=ofile)
    print('set xbase [lindex $fullbox 0]', file=ofile)
    print('set ybase [lindex $fullbox 1]', file=ofile)
    print('', file=ofile)

    # Break layout into tiles and process each separately
    print('for {set y 0} {$y < $ytiles} {incr y} {', file=ofile)
    print('    for {set x 0} {$x < $xtiles} {incr x} {', file=ofile)
    print('        set xlo [expr $xbase + $x * $stepwidth]', file=ofile)
    print('        set ylo [expr $ybase + $y * $stepheight]', file=ofile)
    print('        set xhi [expr $xlo + $stepwidth]', file=ofile)
    print('        set yhi [expr $ylo + $stepheight]', file=ofile)
    print('        if {$xhi > $fullwidth} {set xhi $fullwidth}', file=ofile)
    print('        if {$yhi > $fullheight} {set yhi $fullheight}', file=ofile)
    print('        box values $xlo $ylo $xhi $yhi', file=ofile)
    # The flattened area must be larger than the fill tile by >1.5um
    print('        box grow c 1.6um', file=ofile)

    # Flatten into a cell with a new name
    print('        puts stdout "Flattening layout of tile x=$x y=$y. . . "', file=ofile)
    print('        flush stdout', file=ofile)
    print('        update idletasks', file=ofile)
    print('        flatten -dobox -nolabels ' + project_with_id + '_fill_pattern_${x}_$y', file=ofile)
    print('        load ' + project_with_id + '_fill_pattern_${x}_$y', file=ofile)
    # Remove any GDS_FILE reference (there should not be any?)
    print('        property GDS_FILE ""', file=ofile)
    # Set boundary using comment layer, to the size of the step box
    # This corresponds to the "topbox" rule in the wafflefill(tiled) style
    print('        select top cell', file=ofile)
    print('        erase comment', file=ofile)
    print('        box values $xlo $ylo $xhi $yhi', file=ofile)
    print('        paint comment', file=ofile)

    if not distmode:
        print('        puts stdout "Writing GDS. . . "', file=ofile)

    print('        flush stdout', file=ofile)
    print('        update idletasks', file=ofile)

    if distmode:
        print('        writeall force ' + project_with_id + '_fill_pattern_${x}_$y', file=ofile)
    else:
        print('        gds write ' + project_with_id + '_fill_pattern_${x}_$y.gds', file=ofile)
    # Reload project top
    print('        load ' + project, file=ofile)

    # Remove last generated cell to save memory
    print('        cellname delete ' + project_with_id + '_fill_pattern_${x}_$y', file=ofile)

    print('    }', file=ofile)
    print('}', file=ofile)

    if distmode:
        print('set ofile [open fill_gen_info.txt w]', file=ofile)
        print('puts $ofile "$stepwidth"', file=ofile)
        print('puts $ofile "$stepheight"', file=ofile)
        print('puts $ofile "$xtiles"', file=ofile)
        print('puts $ofile "$ytiles"', file=ofile)
        print('puts $ofile "$xbase"', file=ofile)
        print('puts $ofile "$ybase"', file=ofile)
        print('close $ofile', file=ofile)
        print('quit -noprompt', file=ofile)
        ofile.close()

        with open(magpath + '/generate_fill_dist.tcl', 'w') as ofile:
            print('#!/bin/env wish', file=ofile)
            print('drc off', file=ofile)
            print('tech unlock *', file=ofile)
            print('snap internal', file=ofile)
            print('box values 0 0 0 0', file=ofile)
            print('set filename [file root [lindex $argv $argc-1]]', file=ofile)
            print('load $filename', file=ofile)
            print('cif ostyle wafflefill(tiled)', file=ofile)
            print('gds write [file root $filename].gds', file=ofile)
            print('quit -noprompt', file=ofile)

        ofile = open(magpath + '/generate_fill_final.tcl', 'w')
        print('#!/bin/env wish', file=ofile)
        print('drc off', file=ofile)
        print('tech unlock *', file=ofile)
        print('snap internal', file=ofile)
        print('box values 0 0 0 0', file=ofile)

        print('set ifile [open fill_gen_info.txt r]', file=ofile)
        print('gets $ifile stepwidth', file=ofile)
        print('gets $ifile stepheight', file=ofile)
        print('gets $ifile xtiles', file=ofile)
        print('gets $ifile ytiles', file=ofile)
        print('gets $ifile xbase', file=ofile)
        print('gets $ifile ybase', file=ofile)
        print('close $ifile', file=ofile)
        print('cif ostyle wafflefill(tiled)', file=ofile)

    # Now create simple "fake" views of all the tiles.
    print('gds readonly true', file=ofile)
    print('gds rescale false', file=ofile)
    print('for {set y 0} {$y < $ytiles} {incr y} {', file=ofile)
    print('    for {set x 0} {$x < $xtiles} {incr x} {', file=ofile)
    print('        set xlo [expr $xbase + $x * $stepwidth]', file=ofile)
    print('        set ylo [expr $ybase + $y * $stepheight]', file=ofile)
    print('        set xhi [expr $xlo + $stepwidth]', file=ofile)
    print('        set yhi [expr $ylo + $stepheight]', file=ofile)
    print('        load ' + project_with_id + '_fill_pattern_${x}_$y -quiet', file=ofile)
    print('        box values $xlo $ylo $xhi $yhi', file=ofile)
    print('        paint comment', file=ofile)
    print('        property FIXED_BBOX "$xlo $ylo $xhi $yhi"', file=ofile)
    print('        property GDS_FILE ' + project_with_id + '_fill_pattern_${x}_${y}.gds', file=ofile)
    print('        property GDS_START 0', file=ofile)
    print('    }', file=ofile)
    print('}', file=ofile)

    # Now tile everything back together
    print('load ' + project_with_id + '_fill_pattern -quiet', file=ofile)
    print('for {set y 0} {$y < $ytiles} {incr y} {', file=ofile)
    print('    for {set x 0} {$x < $xtiles} {incr x} {', file=ofile)
    print('        box values 0 0 0 0', file=ofile)
    print('        getcell ' + project_with_id + '_fill_pattern_${x}_$y child 0 0', file=ofile)
    print('    }', file=ofile)
    print('}', file=ofile)

    # And write final GDS
    print('puts stdout "Writing final GDS"', file=ofile)

    print('cif *hier write disable', file=ofile)
    print('cif *array write disable', file=ofile)
    if hasgdsdir:
        print('gds write ../gds/' + project_with_id + '_fill_pattern.gds', file=ofile)
    else:
        print('gds write ' + project_with_id + '_fill_pattern.gds', file=ofile)
    print('set endtime [orig_clock format [orig_clock seconds] -format "%D %T"]', file=ofile)
    print('puts stdout "Ended: $endtime"', file=ofile)
    print('quit -noprompt', file=ofile)
    ofile.close()

    myenv = os.environ.copy()
    myenv['MAGTYPE'] = 'mag'

    if not testmode:
        # Diagnostic
        # print('This script will generate file ' + project_with_id + '_fill_pattern.gds')
        print('This script will generate files ' + project_with_id + '_fill_pattern_x_y.gds')
        print('Now generating fill patterns.  This may take. . . quite. . . a while.', flush=True)
        mproc = subprocess.run(['magic', '-dnull', '-noconsole',
		'-rcfile', rcfile, magpath + '/generate_fill.tcl'],
		stdin = subprocess.DEVNULL,
		stdout = subprocess.PIPE,
		stderr = subprocess.PIPE,
		cwd = magpath,
		env = myenv,
		universal_newlines = True)
        if mproc.stdout:
            for line in mproc.stdout.splitlines():
                print(line)
        if mproc.stderr:
            print('Error message output from magic:')
            for line in mproc.stderr.splitlines():
                print(line)
            if mproc.returncode != 0:
                print('ERROR:  Magic exited with status ' + str(mproc.returncode))

        if distmode:
            # If using distributed mode, then run magic on each of the generated
            # layout files
            pool = multiprocessing.Pool()
            magfiles = glob.glob(magpath + '/' + project_with_id + '_fill_pattern_*.mag')
            # NOTE:  Adding 'x' to the end of each filename, or else magic will
            # try to read it from the command line as well as passing it as an
            # argument to the script.  We only want it passed as an argument.
            magxfiles = list(item + 'x' for item in magfiles)
            pool.map(makegds, magxfiles)

            # If using distributed mode, then remove all of the temporary .mag files
            # and then run the final generation script.
            for file in magfiles:
                os.remove(file)

            mproc = subprocess.run(['magic', '-dnull', '-noconsole',
			'-rcfile', rcfile, magpath + '/generate_fill_final.tcl'],
			stdin = subprocess.DEVNULL,
			stdout = subprocess.PIPE,
			stderr = subprocess.PIPE,
			cwd = magpath,
			env = myenv,
			universal_newlines = True)
            if mproc.stdout:
                for line in mproc.stdout.splitlines():
                    print(line)
            if mproc.stderr:
                print('Error message output from magic:')
                for line in mproc.stderr.splitlines():
                    print(line)
                if mproc.returncode != 0:
                    print('ERROR:  Magic exited with status ' + str(mproc.returncode))

    if not keepmode:
        # Remove fill generation script
        os.remove(magpath + '/generate_fill.tcl')
        # Remove all individual fill tiles, leaving only the composite GDS.
        filelist = os.listdir(magpath)
        for file in filelist:
            if os.path.splitext(magpath + '/' + file)[1] == '.gds':
                if file.startswith(project_with_id + '_fill_pattern_'):
                    os.remove(magpath + '/' + file)

        if distmode:
            os.remove(magpath + '/generate_fill_dist.tcl')
            os.remove(magpath + '/generate_fill_final.tcl')
            os.remove(magpath + '/fill_gen_info.txt')
            if testmode:
                magfiles = glob.glob(magpath + '/' + project_with_id + '_fill_pattern_*.mag')
                for file in magfiles:
                    os.remove(file)

    print('Done!')
    exit(0)
