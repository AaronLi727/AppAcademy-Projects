def select_even_nums(array)
    array.select { |ele| ele.even? }
end

p select_even_nums([7,3,2,5,12])

def reject_puppies(array)
    array.reject { |key| key["age"] < 3 }
end

p reject_puppies(dogs = [
        {"name"=>"Fido", "age"=>3},
        {"name"=>"Spot", "age"=>2},
        {"name"=>"Rex", "age"=>5},
        {"name"=>"Gizmo", "age"=>1}
      ])

def count_positive_subarrays(array)
    array.count { |subarray| subarray.sum > 0}
end

p count_positive_subarrays(array_1 = [
        [-2, 5],
        [1, -9, 1],
        [4, 7]
      ])

def aba_translate(string)
    string.split("")
    result = ""
    vowels = "aeiou"
    i = 0
    while i < string.length
        if vowels.include?(string[i])
            result += string[i] + "b" + string[i]
        else
            result += string[i]
        end
        i+=1
    end
    result
end

p aba_translate("cats")

def aba_array(array)
    array.map { |ele| aba_translate(ele)}
end

p aba_array(["cat","dog"])