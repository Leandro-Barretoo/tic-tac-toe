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
used_moves = []

while game_start
  won = false
  puts rounds
  puts "#{user_one} Make your move(1-9):"
  user_move = gets.chomp.to_i

  if (user_move.between?(1, 9))

    if used_moves.any?(user_move)
      puts 'Position already taken'
    else
      used_moves.push(user_move)
    end

    puts '   |   |   '
    puts '--- --- ---'
    puts '   |   |   '
    puts '--- --- ---'
    puts '   |   |   '
  else
    puts 'invalid input'
    break
  end

  puts "#{user_two} Make your move(1-9):"
  user_move = gets.chomp.to_i

  if (user_move.between?(1, 9))

    if used_moves.any?(user_move)
      puts 'Position already taken'
    else
      used_moves.push(user_move)
    end

    puts '   |   |   '
    puts '--- --- ---'
    puts '   |   |   '
    puts '--- --- ---'
    puts '   |   |   '
  else
    puts 'invalid input'
    break
  end

  # make move on the board
  # puts board
  # initiate next rounds

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

  # if any player gets a winning combination.
  # he wins the game otherwise its a tie. break the loop

  won == true ? game_start = false : 'Tie the game'

end
