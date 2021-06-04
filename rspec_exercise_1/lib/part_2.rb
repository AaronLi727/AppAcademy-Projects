def hipsterfy(string)
    p string
    result = ""
    i = string.length-1
    count = 0
    while i >= 0
        if string[i] == 'a' || string[i] == 'i' || string[i] == 'o' || string[i] == 'e' || string[i] == 'u'
            result = string[0...i] + string[i+1..-1]
            break
        else 
            result = string
        end
        i-=1
    end
    result
end

def vowel_counts(string)
    string.downcase! #converts whole string into lowercase 
    string.split(" ")#"code" -> [c,o,d,e]
    i = 0
    counts = Hash.new(0) #creates a new hash with default value 0
    vowels = "aeiou" #string of vowels
    while i < string.length
        if vowels.include?(string[i]) #checks if array contains vowels
            counts[string[i]] +=1 #if vowel exists, add 1 to the corresponding hash[key]
        end
        i+=1
    end
    counts
end

p vowel_counts("code bootcamp")
p vowel_counts("WILLIAMSBURG bridge")

def caesar_cipher(string, number)
    alphabet = ('a'..'z').to_a
    new_string = ""
    i = 0
    while i < string.length
        old = alphabet.index(string[i])
        if old == nil
            new_string += string[i]
        else
            new_idx = old + number
            new_string += alphabet[new_idx % 26]
        end
        i+=1
    end
    new_string
end
