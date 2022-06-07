#! /bin/env ruby 

prev_1, prev_2 = 1, 2
sum = prev_2

while 
    i = prev_1 + prev_2
    
    break if i > 4_000_000 

    p i

    sum += i if i % 2 == 0

    prev_1, prev_2 = prev_2, i 
end

p sum