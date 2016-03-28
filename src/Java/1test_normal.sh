#!/bin/bash

echo "Execute Makefile"
make clean
make

echo "Testing Basic Algorithm (Sequential) in Java"
echo "Execute java Matrix"
echo ""
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Basic Algorithm"
java Matrix 600 600 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Basic Algorithm"
java Matrix 1000 1000 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Basic Algorithm"
java Matrix 1400 1400 1
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Basic Algorithm"
java Matrix 1800 1800 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Basic Algorithm"
java Matrix 2200 2200 1
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Basic Algorithm"
java Matrix 2600 2600 1
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Basic Algorithm"
java Matrix 3000 3000 1
date
echo "--- --- --- --- --- --- --- ---"
echo "test_normal.sh Done"
echo "--- --- --- --- --- --- --- ---"
