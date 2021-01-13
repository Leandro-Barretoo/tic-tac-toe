#!/usr/bin/env ruby

class Game
  def initialize
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

  def board_game
    puts " #{@board_arr[0]} | #{@board_arr[1]} | #{@board_arr[2]}"
    puts '--- --- ---'
    puts " #{@board_arr[3]} | #{@board_arr[4]} | #{@board_arr[5]}"
    puts '--- --- ---'
    puts " #{@board_arr[6]} | #{@board_arr[7]} | #{@board_arr[8]}"
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
    if @user_one_move.between?(1, 9) && @num_check.none?(@user_one_move)
      board_game
      @num_check.push(@user_one_move)
    else
      puts 'You made an invalid move!!'
      ask_move_one
    end
  end

  def validate_two
    if @user_two_move.between?(1, 9) && @num_check.none?(@user_two_move)
      board_game
      @num_check.push(@user_two_move)
    else
      puts 'You made an invalid move!!'
      ask_move_two
    end
  end
end

start_game = Game.new

game_on = true
i = 0

while game_on
  start_game.introduction
  start_game.instructions
  while i < 4
    start_game.ask_move_one
    start_game.ask_move_two
    i += 1
  end
  puts 'Do you want a rematch: yes or no?'
  rematch_ans = gets.chomp
  rematch_ans == 'yes' ? game_on : game_on = false
end
