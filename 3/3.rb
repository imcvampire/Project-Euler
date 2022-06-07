#! /bin/env ruby 

def is_prime(num)
    return false if num < 2 || num % 2 == 0

    i = 3
    while i < Math.sqrt(num) + 1
        return false if num % i == 0 

        i += 2 
    end 

    true
end 

num = 600851475143
largest_prime = 0

while num % 2 == 0 
    num /= 2
end 

while num % 3 == 0 
    num /= 3 
end 

prime = 5
max = Math.sqrt(num) + 1 
while prime < max 
    while num % prime == 0
        largest_prime = prime 

        num /= prime
    end 

    loop do 
        prime += 6
        break if is_prime(prime)
    end 
end 

p largest_prime 