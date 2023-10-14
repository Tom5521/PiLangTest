import platform
from os import system as sys

acuraccy = 100000000

def CalculateIn(lang):
    print(f"Calculating in {lang}")
def exec(bin):
    OS = platform.system()
    win = ""
    if OS == "Windows":
        win = ".exe"
    
    
    sys(f"builds/{bin}{win} {acuraccy}")
    print()

def run(cmd):
    sys(f"{cmd} {acuraccy}")
    print()

print(f"Acuraccy:{acuraccy}\n")
print("Compiled:\n")
CalculateIn("C++")
exec("pi-cpp")
CalculateIn("C")
exec("pi-c")
CalculateIn("Go")
exec("pi-go")
CalculateIn("Go (gccgo)")
exec("pi-gcc-go")
CalculateIn("Rust")
exec("pi-rust")
print("Interpreted:\n")
CalculateIn("Python")
run("python interpreted/pi.py")
CalculateIn("Lua")
run("lua interpreted/pi.lua")
CalculateIn("Ruby")
run("ruby interpreted/pi.rb")
