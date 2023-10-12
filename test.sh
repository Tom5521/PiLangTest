#!/bin/bash


accuracy=100000000
CalculateIn="Calculate pi in"

echo Accuracy = $accuracy


echo $CalculateIn golang
./pi-go $accuracy
echo 
echo $CalculateIn python
python main.py $accuracy
echo 
echo $CalculateIn C 
./pi-c $accuracy
echo
echo $CalculateIn C++
./pi-cpp $accuracy
echo
echo $CalculateIn Rust
./pi-rust $accuracy
echo 
echo $CalculateIn Lua
lua main.lua $accuracy
echo 
echo $CalculateIn Ruby
ruby main.rb $accuracy


