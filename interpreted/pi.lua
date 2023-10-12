print("Default pi value: " .. math.pi)

local num_iterations = tonumber(arg[1]) or 1000000

local pi = 0
local start_time = os.clock() * 1000 -- Convertir el tiempo inicial a milisegundos

for i = 0, num_iterations do
    local term = (-1)^i / (2 * i + 1)
    pi = pi + term
end

pi = pi * 4

local end_time = os.clock() * 1000 -- Convertir el tiempo final a milisegundos
local elapsed_time = end_time - start_time

print("Time Elapsed: " .. elapsed_time .. " ms")
print("Approximate Pi Value: " .. pi)


