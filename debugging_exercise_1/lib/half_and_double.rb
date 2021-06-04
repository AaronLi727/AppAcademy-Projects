# Debug this code to pass rspec! There are 1 mistake to fix.

# Write a method, half_and_double, that accepts an array of numbers as an arg. 
# The method should return a new array where every even number is divided by 2 and every odd
# number is multipled by 2.

require "byebug"

def half_and_double(array)
    arr = []
    new_array = array.map do |num|
        if num % 2 == 0
            arr << num / 2
        else
            arr << num * 2
        end
    end
    arr
end

p half_and_double([4,5,7,10])