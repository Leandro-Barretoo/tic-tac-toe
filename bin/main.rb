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

  # make move on the board
  # puts board
  # initiate next rounds

  rounds += 1

  # if any player gets a winning combination.
  # he wins the game otherwise its a tie. break the loop

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

end

# check if the move was already made
# if yes throw an error 'place already taken'
# if not display board with the changes
# repeat process till we get a winnig move
# if no winning move throw a 'It's a tie!'
# if winnig move detected then declare who is the winner
