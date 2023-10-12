#!/bin/bash

echo build Go 
go build -o pi-go main.go
echo build C++
g++ -o pi-cpp main.cpp
echo build C
gcc -o pi-c main.c 
echo build Rust
rustc -o pi-rust main.rs
