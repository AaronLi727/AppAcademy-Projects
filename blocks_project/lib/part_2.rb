def all_words_capitalized?(array)
    array.all? {|word| word.capitalize == word}
end

p all_words_capitalized?(["Hello", "World"])

def no_valid_url?(array)
    url = ['.com','.net','.io','.org']
    array.none? do |valid| url.any? {|ending| valid.end_with?(ending)}
end
end

p no_valid_url?(array=["appacademy.io", "sennacy.com", "heyprogrammers.org"])

def any_passing_students?(array)
    array.any? do |students| average = students[:grades].sum / students[:grades].length * 1.0
    average >= 75
    end
end

p any_passing_students?( students_1 = [
          { name: "Alvin", grades: [70, 50, 75] },
          { name: "Warlin", grades: [80, 99, 95] },
          { name: "Vlad", grades: [100] },
        ])