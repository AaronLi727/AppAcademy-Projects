class Board

  def initialize(number)
    @grid = Array.new(number) {Array.new(number, :N)}
    @size = number * number
  end

  def size
    @size
  end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def []=(position,value)
    row, col = position
    @grid[row][col] = value
  end

  def num_ships
    @grid.flatten.count(:S)
  end

  def attack(position)
    if self[position] == :S 
        self[position] = :H 
        puts "you sunk my battleship!"
        return true
    else
        self[position] = :X 
        return false
    end
  end

  def place_random_ships
    twentyfive_percent = 0.25 * self.size

    while self.num_ships < twentyfive_percent
      row = rand(0...@grid.length)
      col = rand(0...@grid.length)
      pos = [row, col]
      self[pos] = :S
    end
  end

  def hidden_ships_grid
    @grid.map do |row|
      row.map do |ele|
        if ele == :S
           :N 
        else
          ele
        end
      end
    end
  end

  def self.print_grid(array)
    array.each do |row|
      puts row.join(" ")
    end
  end

  def cheat 
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end

end
