class Bootcamp

    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |key,value| key[value] = []}
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(string)
        @teachers << string
    end

    def enroll(string)
        if @students.length < @student_capacity
            @students << string
        else
            return false
        end
        return true
    end

    def enrolled?(string)
        i = 0
        while i < @students.length
            if @students[i] == string
                return true
            end
            i+=1
        end
        return false
    end

    def student_to_teacher_ratio
        @students.length/@teachers.length
    end

    def add_grade(string, number)
        if self.enrolled?(string)
            @grades[string] << number
        else
            return false
        end
        return true
    end

    def num_grades(string)
        @grades[string].length
    end

    def average_grade(string)
        if !self.enrolled?(string) || num_grades(string).zero?
            return nil
        else
            @grades[string].sum/self.num_grades(string)
        end
    end
end
