require '../lib/player.rb'

class Board < Play
  def board_game
    puts " #{@board_arr[0]} | #{@board_arr[1]} | #{@board_arr[2]}"
    puts '--- --- ---'
    puts " #{@board_arr[3]} | #{@board_arr[4]} | #{@board_arr[5]}"
    puts '--- --- ---'
    puts " #{@board_arr[6]} | #{@board_arr[7]} | #{@board_arr[8]}"
  end

  def placement_x
    @board_arr[@user_one_move - 1] = 'X'
  end

  def placement_o
    @board_arr[@user_two_move - 1] = 'O'
  end
end
