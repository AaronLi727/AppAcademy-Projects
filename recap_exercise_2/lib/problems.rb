# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    i = 1
    while i <= num_1 * num_2 #multiply num1 and num2 to get a common multiple
        if i % num_1 == 0 && i % num_2 == 0 #return i if i is both a common multiple of num1 and num2
            return i 
        end
        i+=1
    end
    i
end

# p least_common_multiple(4,10)

# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    counter = Hash.new(0) 
    #create a hash that counts each bigram 
    #{"go"=>1, "ot"=>2, "to"=>1, "th"=>1, "he"=>1, "em"=>1, "mo"=>1, "oo"=>3, "on"=>2, "ns"=>1, 
    #"so"=>1, "nf"=>1, "fo"=>1, "or"=>1, "rp"=>1, "pr"=>1, "ro"=>1, "of"=>1, "f"=>1}
    (0...str.length).each do |i|
        bigram = str[i..i+1]
        counter[bigram]+=1
    end
    sorted = counter.sort_by {|str,n| n}
    #sort hash into an array (increasing order)
    #[["f", 1], ["ro", 1], ["of", 1], ["go", 1], ["to", 1], ["th", 1], ["he", 1], ["em", 1], ["mo", 1],
    #["ns", 1], ["so", 1], ["nf", 1], ["fo", 1], ["or", 1], ["rp", 1], ["pr", 1], ["ot", 2], ["on", 2],
    # ["oo", 3]]
    sorted.last[0] #sorted.last -> ["oo",3]        sorted.last[0] -> "oo"
    #returns the last(highest counted value)
end

# p most_frequent_bigram("thethrillofit")
# p most_frequent_bigram("gotothemoonsoonforproof")

class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        new_hash = {}
        self.each do |key,val|
            new_hash[val] = key
        end
        new_hash
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        count = 0
        self.each_with_index do |ele1,idx1|
            self.each_with_index do |ele2,idx2|
                if ele1 + ele2 == num && idx2 > idx1
                    count+=1
                end
            end
        end
        count
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        prc ||= Proc.new{ |a,b| a <=> b}
        sorted = false
        while !sorted
            sorted = true
            (0...self.length-1).each do |i|
                if prc.call(self[i],self[i+1]) == 1
                    self[i],self[i+1]= self[i+1],self[i]
                    sorted = false
                end
            end
        end
        self
    end
end
