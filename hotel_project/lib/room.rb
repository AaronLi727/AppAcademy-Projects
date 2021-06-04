class Room
    def initialize(number)
        @capacity = number
        @occupants = []
    end
    
    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        if @occupants.length < @capacity #comparing array to number -> convert array into an integer to compare
            return false
        else
            return true
        end
    end

    def available_space
        return @capacity - @occupants.length
    end

    def add_occupant(string)
        if !full? 
            @occupants << string
            return true
        else
            return false
        end
    end

end
