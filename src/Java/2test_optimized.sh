#!/bin/bash

echo "Execute Makefile"
make clean
make

echo "Testing Optimized Algorithm (Sequential) in Java"
echo "Execute java Matrix"
echo ""
date
echo "--- --- --- --- --- --- --- ---"
echo "600x600 Optimized Algorithm"
java Matrix 600 600 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1000x1000 Optimized Algorithm"
java Matrix 1000 1000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1400x1400 Optimized Algorithm"
java Matrix 1400 1400 2
date
echo "--- --- --- --- --- --- --- ---"
echo "1800x1800 Optimized Algorithm"
java Matrix 1800 1800 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2200x2200 Optimized Algorithm"
java Matrix 2200 2200 2
date
echo "--- --- --- --- --- --- --- ---"
echo "2600x2600 Optimized Algorithm"
java Matrix 2600 2600 2
date
echo "--- --- --- --- --- --- --- ---"
echo "3000x3000 Optimized Algorithm"
java Matrix 3000 3000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "4000x4000 Optimized Algorithm"
java -Xmx2048m Matrix 4000 4000 2       #-Xmx2048m flag necessary to increase memory available for the application to 2Gb(java.lang.OutOfMemoryError: Java heap space)
date
echo "--- --- --- --- --- --- --- ---"
echo "6000x6000 Optimized Algorithm"
java -Xmx2048m Matrix 6000 6000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "8000x8000 Optimized Algorithm"
java -Xmx2048m Matrix 8000 8000 2
date
echo "--- --- --- --- --- --- --- ---"
echo "10000x10000 Optimized Algorithm"
java -Xmx4096m Matrix 10000 10000 2     #-Xmx4096m flag necessary to increase memory available for the application to 4Gb(java.lang.OutOfMemoryError: Java heap space)
date
echo "--- --- --- --- --- --- --- ---"
echo "test_optimized.sh Done"
echo "--- --- --- --- --- --- --- ---"
