#!/bin/bash

echo "Execute Makefile"
make clean
make

echo "Testing Optimized Algorithm (Sequential) in C/C++"
echo "Execute ./matrix_mult"
echo ""
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Optimized Algorithm"
./matrix_mult 600 600 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Optimized Algorithm"
./matrix_mult 1000 1000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Optimized Algorithm"
./matrix_mult 1400 1400 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Optimized Algorithm"
./matrix_mult 1800 1800 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Optimized Algorithm"
./matrix_mult 2200 2200 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Optimized Algorithm"
./matrix_mult 2600 2600 2
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Optimized Algorithm"
./matrix_mult 3000 3000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "4000x4000 Optimized Algorithm"
./matrix_mult 4000 4000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "6000x6000 Optimized Algorithm"
./matrix_mult 6000 6000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "8000x8000 Optimized Algorithm"
./matrix_mult 8000 8000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "10000x10000 Optimized Algorithm"
./matrix_mult 10000 10000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "test_optimized.sh Done"
echo "--- --- --- --- --- --- --- ---"
