#!/bin/bash


accuracy=100000000
CalculateIn="Calculate pi in"

echo Accuracy = $accuracy


echo $CalculateIn golang
./builds/pi-go $accuracy
echo
echo "$CalculateIn golang(gccgo)"
./builds/pi-gcc-go
echo
echo $CalculateIn python
python ./interpreted/pi.py $accuracy
echo 
echo $CalculateIn C 
./builds/pi-c $accuracy
echo
echo $CalculateIn C++
./builds/pi-cpp $accuracy
echo
echo $CalculateIn Rust
./builds/pi-rust $accuracy
echo 
echo $CalculateIn Lua
lua ./interpreted/pi.lua $accuracy
echo 
echo $CalculateIn Ruby
ruby ./interpreted/pi.rb $accuracy


