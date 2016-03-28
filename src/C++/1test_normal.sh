#!/bin/bash

echo "Execute Makefile"
make clean
make

echo "Testing Basic Algorithm (Sequential) in C/C++"
echo "Execute ./matrix_mult"
echo ""
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Basic Algorithm"
./matrix_mult 600 600 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Basic Algorithm"
./matrix_mult 1000 1000 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Basic Algorithm"
./matrix_mult 1400 1400 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Basic Algorithm"
./matrix_mult 1800 1800 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Basic Algorithm"
./matrix_mult 2200 2200 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Basic Algorithm"
./matrix_mult 2600 2600 1
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Basic Algorithm"
./matrix_mult 3000 3000 1
date
echo "--- --- --- --- --- --- --- ---"
echo "test_normal.sh Done"
echo "--- --- --- --- --- --- --- ---"
