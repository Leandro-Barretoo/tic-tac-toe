class Board
  attr_accessor :board_arr
  def initialize
    @board_arr = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def board_game
    puts " #{@board_arr[0]} | #{@board_arr[1]} | #{@board_arr[2]}"
    puts '--- --- ---'
    puts " #{@board_arr[3]} | #{@board_arr[4]} | #{@board_arr[5]}"
    puts '--- --- ---'
    puts " #{@board_arr[6]} | #{@board_arr[7]} | #{@board_arr[8]}"
  end

  def placement(user_move, player)
    if player == 1
      user_symbol = 'X'
      @board_arr[user_move - 1] = user_symbol
    elsif player == 2
      user_symbol = 'O'
      @board_arr[user_move - 1] = user_symbol
    end
  end
end
