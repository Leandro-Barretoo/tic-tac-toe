#!/usr/bin/env ruby

require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require_relative '../lib/game.rb'

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
