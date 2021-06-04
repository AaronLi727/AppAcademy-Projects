class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def  self.random_word
      DICTIONARY.sample
  end

  def initialize
    @RANDOM_WORD
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length,'_')
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    else
      return false
    end
  end

  def get_matching_indices(char)
    array = []
    word = @secret_word.split("")
    i = 0
    while i < word.length
      if word[i] == char
        array << i
      end
      i+=1
    end
    array
  end

  def fill_indices(char, array)
    i = 0
    while i < array.length
      @guess_word[array[i]] = char
    i+=1
    end
  end

  def try_guess(char)

    if get_matching_indices(char).empty?
      @remaining_incorrect_guesses -= 1
    else
      fill_indices(char, get_matching_indices(char))
    end
    if already_attempted?(char)
      puts "that has already been attempted"
      return false
    else
      @attempted_chars << char
      return true
    end
    
  end

  def ask_user_for_guess
    print "Enter a char:"
    return try_guess(gets.chomp)
  end

  def win?
    if @guess_word.join("") == @secret_word
      print "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      print "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if win? || lose?
      print @secret_word
      return true
    else
      return false
    end
  end

end
