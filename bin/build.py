import os,platform
from os import system as sys

OS = platform.system()
win = ""
if OS == "windows":
    win = ".exe"
def build(lang):
    print("Building "+lang)

if not os.path.exists("builds"):
    os.mkdir("builds")

build("Go")
sys(f"go build -o builds/pi-go{win} ./compiled/pi.go")
build("C++")
sys(f"g++ -o builds/pi-cpp{win} ./compiled/pi.cpp")
build("C")
sys(f"gcc -o builds/pi-c{win} ./compiled/pi.c")
build("Rust")
sys(f"rustc -o builds/pi-rust{win} ./compiled/pi.rs")

