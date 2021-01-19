class Game < Board
  attr_accessor :one_acc, :two_acc
  def initialize
    super
    @one_acc = []
    @two_acc = []
    @num_check = []
  end

  def introduction
    puts 'Welcome to tic-tac-toe'
    puts 'Please enter players names:'
    puts '--> Player One:'
    @player_one = gets.chomp
    puts '--> Player Two:'
    @player_two = gets.chomp
  end

  def instructions
    puts 'How this game works?'
    puts '--> Choose one of the 9 positions to place your mark'
    puts ' 1 | 2 | 3'
    puts '--- --- ---'
    puts ' 4 | 5 | 6'
    puts '--- --- ---'
    puts ' 7 | 8 | 9'
  end

  def show_board
    board_game
  end

  def ask_move_one
    puts "--> #{@player_one}, please make your move(1-9):"
    @user_one_move = gets.chomp.to_i
    user_move = @user_one_move
    ask_move_one unless validate(user_move, @one_acc, 1)
    compare = Play.new
    compare.comparison(@one_acc)
  end

  def ask_move_two
    puts "--> #{@player_two}, please make your move(1-9):"
    @user_two_move = gets.chomp.to_i
    user_move = @user_two_move
    ask_move_two unless validate(user_move, @two_acc, 2)
    compare = Play.new
    compare.comparison(@two_acc)
  end

  def validate(user_move, user_acc, player)
    if user_move.is_a?(Integer) && user_move.between?(1, 9) && @num_check.none?(user_move)
      placement(user_move, player)
      puts '------------------------------'
      show_board
      puts '------------------------------'
      @num_check.push(user_move)
      user_acc.push(user_move)
      true
    else
      puts '------------------------------'
      puts '--> You made an invalid move!! <--'
      puts '------------------------------'
      false
    end
  end

  def end_game
    puts 'Do you want a rematch: yes or no?'
    rematch_ans = gets.chomp
    rematch_ans
  end

  def its_tie
    puts "Ohh!! It's a draw!!"
  end
end
