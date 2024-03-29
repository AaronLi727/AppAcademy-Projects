require_relative "board"
require_relative "player"

class Battleship
    def initialize(number)
        @player = Player.new
        @board = Board.new(number)
        @remaining_misses = @board.size / 2
    end

    def board 
        @board
    end

    def player
        @player
    end

    def start_game
        @board.place_random_ships
        puts "number of ships:  #{@board.num_ships}"
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            puts "you lose"
            return true
        else
            return false
        end
    end

    def win?
        if @board.num_ships == 0
            puts "you win"
            return true
        else
            return false
        end
    end

    def game_over?
        if win? || lose?
            return true
        else
            return false
        end
    end

    def turn
        move = @player.get_move
        if !@board.attack(move)
            @remaining_misses-=1
        end
        @board.print
        print @remaining_misses
    end
end
