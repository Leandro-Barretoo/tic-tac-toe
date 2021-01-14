require '../lib/player.rb'

class Board < Play
  def board_game
    puts " #{@board_arr[0]} | #{@board_arr[1]} | #{@board_arr[2]}"
    puts '--- --- ---'
    puts " #{@board_arr[3]} | #{@board_arr[4]} | #{@board_arr[5]}"
    puts '--- --- ---'
    puts " #{@board_arr[6]} | #{@board_arr[7]} | #{@board_arr[8]}"
  end

  def placement(user_move)
    if user_move == @user_one_move
      user_symbol = 'X'
      @board_arr[@user_one_move - 1] = user_symbol
    elsif user_move == @user_two_move
      user_symbol = 'O'
      @board_arr[@user_two_move - 1] = user_symbol
    end
  end
end
