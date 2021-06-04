def partition(array, number)
    x = []
    less = []
    great = []
    i = 0
    while i < array.length
        if array[i] < number
            less << array[i]
        else
            great << array[i]
        end
        i+=1
    end
    x.push less
    x.push great
    return x
end

p partition([11,5,13,2,3], 7)

def merge(hash_1, hash_2)
    merged = {}
    hash_1.each do |key,value|
        merged[key] = value
    end
    hash_2.each do |key,value|
        merged[key] = value
    end
    return merged
end

p merge( hash_1 = {"a"=>10, "b"=>20},
      hash_2 = {"c"=>30, "d"=>40, "e"=>50})

def power_of_two(number)
    #1 10 100 1000
    return number > 0 && (number & (number-1) == 0)
end

p power_of_two(15)