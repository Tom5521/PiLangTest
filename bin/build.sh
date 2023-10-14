#!/bin/bash

if [[ ! -d "./builds" ]]; then
  mkdir builds
fi

echo build Go 
go build -o builds/pi-go ./compiled/pi.go
echo build gccgo
go build -compiler gccgo -o builds/pi-gcc-go ./compiled/pi-go
echo build C++
g++ -o builds/pi-cpp ./compiled/pi.cpp
echo build C
gcc -o builds/pi-c ./compiled/pi.c
echo build Rust
rustc -o builds/pi-rust ./compiled/pi.rs
