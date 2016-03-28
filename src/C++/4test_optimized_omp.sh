#!/bin/bash

echo "Execute Makefile"
make clean
make

echo "Testing Optimized Algorithm (Parallel) in C/C++"
echo "Execute ./matrix_mult"
echo ""

##########

echo "--- --- --- --- --- --- --- ---"
echo "With One (1) Thread"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Optimized Algorithm"
./matrix_mult 600 600 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Optimized Algorithm"
./matrix_mult 1000 1000 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Optimized Algorithm"
./matrix_mult 1400 1400 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Optimized Algorithm"
./matrix_mult 1800 1800 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Optimized Algorithm"
./matrix_mult 2200 2200 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Optimized Algorithm"
./matrix_mult 2600 2600 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Optimized Algorithm"
./matrix_mult 3000 3000 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "4000x4000 Optimized Algorithm"
./matrix_mult 4000 4000 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "6000x6000 Optimized Algorithm"
./matrix_mult 6000 6000 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "8000x8000 Optimized Algorithm"
./matrix_mult 8000 8000 4 1
date
echo "--- --- --- --- --- --- --- ---"
echo "10000x10000 Optimized Algorithm"
./matrix_mult 10000 10000 4 1

echo "--- --- --- --- --- --- --- ---"
echo "Done with One (1) Thread"
echo "--- --- --- --- --- --- --- ---"

#############

echo ""
echo "--- --- --- --- --- --- --- ---"
echo "With Two (2) Threads"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Optimized Algorithm"
./matrix_mult 600 600 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Optimized Algorithm"
./matrix_mult 1000 1000 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Optimized Algorithm"
./matrix_mult 1400 1400 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Optimized Algorithm"
./matrix_mult 1800 1800 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Optimized Algorithm"
./matrix_mult 2200 2200 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Optimized Algorithm"
./matrix_mult 2600 2600 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Optimized Algorithm"
./matrix_mult 3000 3000 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "4000x4000 Optimized Algorithm"
./matrix_mult 4000 4000 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "6000x6000 Optimized Algorithm"
./matrix_mult 6000 6000 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "8000x8000 Optimized Algorithm"
./matrix_mult 8000 8000 4 2
date
echo "--- --- --- --- --- --- --- ---"
echo "10000x10000 Optimized Algorithm"
./matrix_mult 10000 10000 4 2

echo "--- --- --- --- --- --- --- ---"
echo "Done with Two (2) Threads"
echo "--- --- --- --- --- --- --- ---"

#############

echo ""
echo "--- --- --- --- --- --- --- ---"
echo "With Three (3) Threads"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Optimized Algorithm"
./matrix_mult 600 600 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Optimized Algorithm"
./matrix_mult 1000 1000 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Optimized Algorithm"
./matrix_mult 1400 1400 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Optimized Algorithm"
./matrix_mult 1800 1800 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Optimized Algorithm"
./matrix_mult 2200 2200 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Optimized Algorithm"
./matrix_mult 2600 2600 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Optimized Algorithm"
./matrix_mult 3000 3000 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "4000x4000 Optimized Algorithm"
./matrix_mult 4000 4000 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "6000x6000 Optimized Algorithm"
./matrix_mult 6000 6000 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "8000x8000 Optimized Algorithm"
./matrix_mult 8000 8000 4 3
date
echo "--- --- --- --- --- --- --- ---"
echo "10000x10000 Optimized Algorithm"
./matrix_mult 10000 10000 4 3

echo "--- --- --- --- --- --- --- ---"
echo "Done with Three (3) Threads"
echo "--- --- --- --- --- --- --- ---"

#############

echo ""
echo "--- --- --- --- --- --- --- ---"
echo "With Four (4) Threads"
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Optimized Algorithm"
./matrix_mult 600 600 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Optimized Algorithm"
./matrix_mult 1000 1000 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Optimized Algorithm"
./matrix_mult 1400 1400 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Optimized Algorithm"
./matrix_mult 1800 1800 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Optimized Algorithm"
./matrix_mult 2200 2200 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Optimized Algorithm"
./matrix_mult 2600 2600 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Optimized Algorithm"
./matrix_mult 3000 3000 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "4000x4000 Optimized Algorithm"
./matrix_mult 4000 4000 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "6000x6000 Optimized Algorithm"
./matrix_mult 6000 6000 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "8000x8000 Optimized Algorithm"
./matrix_mult 8000 8000 4 4
date
echo "--- --- --- --- --- --- --- ---"
echo "10000x10000 Optimized Algorithm"
./matrix_mult 10000 10000 4 4

echo "--- --- --- --- --- --- --- ---"
echo "Done with Four (4) Threads"
echo "--- --- --- --- --- --- --- ---"

echo ""

echo "--- --- --- --- --- --- --- ---"
echo "test_optimized_omp.sh Done"
echo "--- --- --- --- --- --- --- ---"
