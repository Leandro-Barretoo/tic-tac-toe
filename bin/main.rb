#!/usr/bin/env ruby

require '../lib/player.rb'
require '../lib/board.rb'

class Game < Board
  def initialize
    @one_acc = []
    @two_acc = []
    @num_check = []
    @board_arr = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
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
    validate_one
  end

  def ask_move_two
    puts "--> #{@player_two}, please make your move(1-9):"
    @user_two_move = gets.chomp.to_i
    validate_two
  end

  def validate_one
    compare_one = Play.new
    if @user_one_move.between?(1, 9) && @num_check.none?(@user_one_move)
      placement_x
      puts '------------------------------'
      show_board
      puts '------------------------------'
      @num_check.push(@user_one_move)
      @one_acc.push(@user_one_move)
      compare_one.comparison_one(@one_acc) 
    else
      puts '------------------------------'
      puts '--> You made an invalid move!! <--'
      puts '------------------------------'
      ask_move_one
    end
  end

  def validate_two
    compare_two = Play.new
    if @user_two_move.between?(1, 9) && @num_check.none?(@user_two_move)
      placement_o
      puts '------------------------------'      
      board_game
      puts '------------------------------'
      @num_check.push(@user_two_move)
      @two_acc.push(@user_two_move)
      compare_two.comparison_two(@two_acc)
    else
      puts '------------------------------'
      puts '--> You made an invalid move!! <--'
      puts '------------------------------'
      ask_move_two
    end
  end

  def end_game
  puts "Do you want a rematch: yes or no?"
  rematch_ans = gets.chomp 
  end

  def its_tie
    puts "Ohh!! It's a tie!!"
  end

end

loop do
  start_game = Game.new
  win = false
  moves = 0
  start_game.introduction
  start_game.instructions
  loop do
    if start_game.ask_move_one == true
      win = true
      break
    end
    moves += 1
    if moves == 9
      break
    end
    if start_game.ask_move_two == true
      win = true
      break
    end
    moves += 1
    if moves == 9
      break
    end
  end
  start_game.its_tie if moves == 9
  if start_game.end_game == 'no'
    break
  end
end

puts '*************************************'
puts 'Thank you for playing.'
puts '- Alamgir and Leandro'
puts '*************************************'
