#!/bin/bash

echo "Execute Makefile"
make clean
make

echo "Testing Basic Algorithm (Parallel) in C/C++"
echo "Execute ./matrix_mult"
echo ""

##########

echo "--- --- --- --- --- --- --- ---"
echo "With One (1) Thread"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Basic Algorithm"
./matrix_mult 600 600 3 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Basic Algorithm"
./matrix_mult 1000 1000 3 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Basic Algorithm"
./matrix_mult 1400 1400 3 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Basic Algorithm"
./matrix_mult 1800 1800 3 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Basic Algorithm"
./matrix_mult 2200 2200 3 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Basic Algorithm"
./matrix_mult 2600 2600 3 1
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Basic Algorithm"
./matrix_mult 3000 3000 3 1

echo "--- --- --- --- --- --- --- ---"
echo "Done with One (1) Thread"
echo "--- --- --- --- --- --- --- ---"

#############

echo ""
echo "--- --- --- --- --- --- --- ---"
echo "With Two (2) Threads"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Basic Algorithm"
./matrix_mult 600 600 3 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Basic Algorithm"
./matrix_mult 1000 1000 3 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Basic Algorithm"
./matrix_mult 1400 1400 3 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Basic Algorithm"
./matrix_mult 1800 1800 3 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Basic Algorithm"
./matrix_mult 2200 2200 3 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Basic Algorithm"
./matrix_mult 2600 2600 3 2
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Basic Algorithm"
./matrix_mult 3000 3000 3 2

echo "--- --- --- --- --- --- --- ---"
echo "Done with Two (2) Threads"
echo "--- --- --- --- --- --- --- ---"

#############

echo ""
echo "--- --- --- --- --- --- --- ---"
echo "With Three (3) Threads"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Basic Algorithm"
./matrix_mult 600 600 3 3
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Basic Algorithm"
./matrix_mult 1000 1000 3 3
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Basic Algorithm"
./matrix_mult 1400 1400 3 3
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Basic Algorithm"
./matrix_mult 1800 1800 3 3
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Basic Algorithm"
./matrix_mult 2200 2200 3 3
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Basic Algorithm"
./matrix_mult 2600 2600 3 3
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Basic Algorithm"
./matrix_mult 3000 3000 3 3

echo "--- --- --- --- --- --- --- ---"
echo "Done with Three (3) Threads"
echo "--- --- --- --- --- --- --- ---"

#############

echo ""
echo "--- --- --- --- --- --- --- ---"
echo "With Four (4) Threads"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Basic Algorithm"
./matrix_mult 600 600 3 4
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Basic Algorithm"
./matrix_mult 1000 1000 3 4
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Basic Algorithm"
./matrix_mult 1400 1400 3 4
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Basic Algorithm"
./matrix_mult 1800 1800 3 4
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Basic Algorithm"
./matrix_mult 2200 2200 3 4
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Basic Algorithm"
./matrix_mult 2600 2600 3 4
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Basic Algorithm"
./matrix_mult 3000 3000 3 4

echo "--- --- --- --- --- --- --- ---"
echo "Done with Four (4) Threads"
echo "--- --- --- --- --- --- --- ---"

echo ""

echo "--- --- --- --- --- --- --- ---"
echo "test_normal_omp.sh Done"
echo "--- --- --- --- --- --- --- ---"
