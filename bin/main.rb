#!/usr/bin/env ruby

class Main

    def initialize
        @menuOptions
    end

    def play
        puts "game started"
    end

    def invalid_input
        puts "invalid input"
        menu
    end
    
    def menu
        puts "Welcome to Tic-Tac-Toe Game"
        puts "Press `P` to Play or `Q` to quit"
        @menuOptions = gets.chomp.downcase
        if @menuOptions == "p"
            play
        elsif @menuOptions == "q"
            puts "Are you sure: y/n"
        else
            invalid_input
        end
    end
end

Main.new.menu