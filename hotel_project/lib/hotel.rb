require_relative "room"

class Hotel
  def initialize(name, hash)
    @name = name
    @rooms = {}
    hash.each do |room_name, capacity|
        @rooms[room_name] = Room.new(capacity)
    end
  end

  def name
    @name.split(" ").map(&:capitalize).join(" ") 
    # split spaces on string into array and map(iterate) through the array and -
    # capitalize the first index of each string then convert array with -
    # new values back into a string
  end

  def rooms
    @rooms
  end

  def room_exists?(room_name)
    if @rooms.has_key?(room_name)
        return true
    else
        return false
    end
  end

  def check_in(person, room_name)
    if !room_exists?(room_name)
        print "sorry, room does not exist"
        return
    end
        if @rooms[room_name].add_occupant(person)
            print "check in successful"
        else
            print "sorry, room is full"
        end
  end

  def has_vacancy?
    @rooms.values.any? do |room|
        if !room.full?
            return true
        else
            return false
        end
    end
  end

  def list_rooms
    @rooms.each { |name,room| puts "#{name}: #{room.available_space}"}
  end
end
