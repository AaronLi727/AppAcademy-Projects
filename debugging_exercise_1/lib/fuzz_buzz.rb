# Debug this code to pass rspec! There is 1 mistake to fix.

# Write a method, fuzz_buzz, that accepts a number as an arg. 
# The method should return an array of numbers from one to the given number that are not divisible by 3 or 5.

require "byebug"

def fuzz_buzz(num)
    numbers = []
    i = 0
    while i <= num
        if !(i % 3 == 0 || i % 5 == 0)
            numbers << i 
        end
        i+=1
    end
    numbers
end

p fuzz_buzz(11)