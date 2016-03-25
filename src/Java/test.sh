#!/bin/bash

echo "Execute Makefile"
make

echo ""
echo "Execute ./matrix_mult"
echo ""

echo "--- --- --- --- --- --- --- ---"
echo "600x600 Basic Algorithm"
java Matrix 600 600 1

echo "--- --- --- --- --- --- --- ---"
echo "600x600 Optimized Algorithm"
java Matrix 600 600 2

echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Basic Algorithm"
java Matrix 3000 3000 1

echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Optimized Algorithm"
java Matrix 3000 3000 2
