#!/bin/bash


presicion=100000000


echo Presision = $presicion\n


echo Calcular pi en golang:
./pi-go $presicion
echo Calcular pi en python
python main.py $presicion
echo Calcular pi en C 
./pi-c $presicion
echo Calcular pi en C++
./pi-cpp $presicion
echo Calcular pi en Rust
./pi-rust $presicion


