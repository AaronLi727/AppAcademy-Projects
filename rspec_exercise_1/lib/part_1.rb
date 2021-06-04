def average(num1, num2)
    (num1 + num2)/ 2.0
end

def average_array(array)
    i = 0 
    sum = 0
    while i < array.length
        sum+=array[i]
        i+=1
    end
    return sum/array.size.to_f
end

def repeat(string, num)
    string * num
end

def yell(string)
    string.upcase + "!"
end
 
def alternating_case(string)
    word = string.split(" ")
    i = 0
    while i < word.length
        if i % 2 == 0 
            word[i] = word[i].upcase
        else
            word[i] = word[i].downcase
        end
        i+=1
    end
    word.join(" ")
end

