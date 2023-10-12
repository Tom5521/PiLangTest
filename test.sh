#!/bin/bash


accuracy=100000000
CalculateIn="Calculate pi in"

echo Accuracy = $accuracy


echo $CalculateIn golang
./pi-go $accuracy
echo $CalculateIn python
python main.py $accuracy
echo $CalculateIn C 
./pi-c $accuracy
echo $CalculateIn C++
./pi-cpp $accuracy
echo $CalculateIn Rust
./pi-rust $accuracy


