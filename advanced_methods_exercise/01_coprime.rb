# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1,num_2)
    while num_2 != 0 
        r = num_1 % num_2 #r= 1  12/1 = 0
        num_1 = num_2 #25 -> 12  12 -> 1
        num_2 = r #12 -> 1    1 -> 0 [12,1] -> [1,0] 
    return num_1 == 1
end
p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false


# euclidean algorithm (finds the greatest common factor)