def palindrome(string)
    reverse = ""
    char = string.split("")
    i = char.length-1
    while i >= 0
        reverse += char[i]
        i-=1
    end
    if reverse == string
        return true
    else
        return false
    end
end

p palindrome("tot")
p palindrome("greek")

def substrings(string)
    result = []
    (0...string.length).each do |start_idx|
        (start_idx...string.length).each do |end_idx|
            result << string[start_idx..end_idx]
        end
    end
    return result
end

p substrings("jump")