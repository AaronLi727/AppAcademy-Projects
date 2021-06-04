# Write a method, `only_vowels?(str)`, that accepts a string as an arg.
# The method should return true if the string contains only vowels.
# The method should return false otherwise.

def only_vowels?(str)
    vowels = "aeiou"
    str.split("").all? do |char| #splits string into seperate array (aaoeee) -> [a,a,o,e,e,e]
        vowels.include?(char) #checks if the whole array includes any vowels [iou] -> true  [cat] -> false
    end
end


p only_vowels?("aaoeee")  # => true
p only_vowels?("iou")     # => true
p only_vowels?("cat")     # => false
p only_vowels?("over")    # => false


