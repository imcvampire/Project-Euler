#! /bin/env ruby 

result = (0..1000).reduce(0) do |sum, num|
    if (num % 3 == 0 || num % 5 == 0)
        next sum + num 
    end 

    sum
end

p result