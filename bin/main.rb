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
    validate(@user_one_move, @one_acc)
  end

  def ask_move_two
    puts "--> #{@player_two}, please make your move(1-9):"
    @user_two_move = gets.chomp.to_i
    validate(@user_two_move, @two_acc)
  end

  def validate(user_move, user_acc)
    compare = Play.new
    if user_move.between?(1, 9) && @num_check.none?(user_move)
      placement(user_move)
      puts '------------------------------'
      show_board
      puts '------------------------------'
      @num_check.push(user_move)
      user_acc.push(user_move)
      compare.comparison(user_acc)
    else
      puts '------------------------------'
      puts '--> You made an invalid move!! <--'
      puts '------------------------------'
      ask_move_one if user_move == @user_one_move
      ask_move_two if user_move == @user_two_move
    end
  end

  def end_game
    puts 'Do you want a rematch: yes or no?'
    rematch_ans = gets.chomp
    rematch_ans
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
    break if moves == 9

    if start_game.ask_move_two == true
      win = true
      break
    end
    moves += 1
    break if moves == 9
  end
  start_game.its_tie if moves == 9
  break if start_game.end_game == 'no'
end

puts '*************************************'
puts 'Thank you for playing.'
puts '- Alamgir and Leandro'
puts '*************************************'
