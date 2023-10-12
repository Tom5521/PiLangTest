import math
import time
import sys

def calculate_pi(n):
  start = time.time()
  
  numerator = 4.0
  denominator = 1.0
  operation = 1.0
  pi = 0.0

  for i in range(n):
    pi += operation * (numerator / denominator)
    denominator += 2
    operation *= -1

  elapsed = (time.time() - start) * 1000
  print(f"Elapsed time: {elapsed:.0f}ms")

  return pi

if __name__ == '__main__':
  if len(sys.argv) < 2:
    exit(1)

  n = int(sys.argv[1])  

  print("Default pi value:", math.pi)

  pi = calculate_pi(n)
  print("pi value calculated locally:", pi)
