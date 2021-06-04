# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length == 0
        return nil
    elsif self.length == 1
        return 0
    else  
        return self.max - self.min 
    end
  end

  def average
    if self.length == 0
        return nil
    else
        return self.sum / self.length.to_f
    end
  end

  def median
    sorted = self.sort
    idx = self.length/2
    if self.length == 0
        return nil
    elsif self.length % 2 == 1
        return sorted[idx]
    else 
        return (sorted[idx] + sorted[(idx)-1]) /( 2 * 1.0)
    end
end

    def counts
        count = Hash.new(0)
        self.each do |ele| 
            count[ele]+=1
        end
        count
    end
    
    # p ["a", "b", "a", "b", "b", "c"].counts

    def my_count(string)
        counter = 0
        self.each do |ele|
            if ele == string
                counter+=1
            else
                counter
            end
        end
        counter
    end
    # p ["a", "b", "a", "a", "b"].my_count("a")

    def my_index(string)
        i = 0
        while i < self.length
            if self[i] == string
                return i 
                break
            end
            i+=1
        end
    end

    # p ["a", "b", "c", "a", "b"].my_index("b")
    # p ["a", "b", "c", "a", "b"].my_index("a")
    # p ["a", "b", "c"].my_index("z")

    def my_uniq
        arr = []
        i = 0
        while i < self.length
            if arr.length == 0
                arr << self[i]
            elsif arr.include?(self[i])
                i+=1
            else
                arr << self[i]
                i+=1
            end
        end
        return arr
    end
        
    # p ["a", "b", "a", "a", "b"].my_uniq

    def my_transpose
    #    transposed = []

    # self.each_with_index do |ele1, idx1|
    #   row = []

    #   self.each_with_index do |ele2, idx2|
    #     row << self[idx2][idx1]
    #   end

    #   transposed << row
    # end

    # transposed
        new_arr = []

        (0...self.length).each do |row|
            new_row = []
            (0...self.length).each do |col|
                new_row << self[col][row]
            end
            new_arr << new_row
        end
        return new_arr
    end
        

#      p arr_1 = [
#           ["a", "b", "c"],
#           ["d", "e", "f"],
#           ["g", "h", "i"]
# ].my_transpose
       
end

