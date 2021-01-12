#!/usr/bin/env ruby

class Main
  def initialize
    @menu_options
  end

  def play
    puts 'game started'
    puts '-------------------------------'
    puts 'Please enter player 1 name:'
    @user_one = gets.chomp
    puts '-------------------------------'
    puts 'Please enter player 2 name:'
    @user_two = gets.chomp
    puts '-------------------------------'
    puts '#{@user_one} start'
    puts 'Make your move(1-9):'
    @user_one_move = gets.chomp
    # make move on the board
    # puts board
    # initiate next round
    puts '-------------------------------'
    puts "#{@user_two} it's you turn"
    puts 'Make your move(1-9):'
    @user_two_move = gets.chomp
    # check if the move was already made
    # if yes throw an error 'place already taken'
    # if not display board with the changes
    # repeat process till we get a winnig move
    # if no winning move throw a 'It's a tie!'
    # if winnig move detected then declare who is the winner
  end

  def invalid_input
    puts 'invalid input'
    menu
  end

  def menu
    puts 'Welcome to Tic-Tac-Toe Game'
    puts 'Press `P` to Play or `Q` to quit'
    @menu_options = gets.chomp.downcase
    if @menu_options == 'p'
      play
    elsif @menu_options == 'q'
      puts 'Are you sure: y/n'
    else
      invalid_input
    end
  end
end

Main.new.menu
