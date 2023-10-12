require 'time'

def calculate_pi(n)
  start = Time.now
  numerator = 4.0
  denominator = 1.0
  operation = 1.0
  pi = 0.0

  for i in 0..n-1
    pi += operation * (numerator / denominator)
    denominator += 2
    operation *= -1
  end

  elapsed = (Time.now - start) * 1000
  puts "Elapsed time: #{elapsed}ms"

  return pi
end

if ARGV.length < 1
  return
end

n = ARGV[0].to_i

puts "Default pi value: #{Math::PI}"

pi = calculate_pi(n)
puts "pi value calculated locally: #{pi}"

