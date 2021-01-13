#!/usr/bin/env ruby

puts 'game started'
puts '-------------------------------'
puts 'Please enter player 1 name:'
user_one = gets.chomp
puts user_one
puts '-------------------------------'
puts 'Please enter player 2 name:'
user_two = gets.chomp
puts user_two
puts '-------------------------------'
puts '#Lets play'

game_start = true
rounds = 0

while game_start
  won = false
  puts rounds
  puts 'Make your move(1-9):'
  user_one_move = gets.chomp
  used_moves = []
  if used_moves.any?(user_one_move)
    puts 'Position already taken'
  else
    used_moves.push(user_one_move)
  end

  puts '   |   |   '
  puts '--- --- ---'
  puts '   |   |   '
  puts '--- --- ---'
  puts '   |   |   '

  puts 'display mark on the board.'
  puts 'check if the position is already taken or not'

  # make move on the board
  # puts board
  # initiate next rounds

  rounds += 1

  # win_combination = [
  #   [0, 1, 2],
  #   [3, 4, 5],
  #   [6, 7, 8],
  #   [0, 3, 6],
  #   [1, 4, 7],
  #   [2, 5, 8],
  #   [0, 4, 8],
  #   [2, 4, 6]
  # ]

  puts 'if any player gets a winning combination.'
  puts 'he wins the game otherwise its a tie. break the loop'

  won == true ? 'decleare winner' : 'Tie the game'

end
