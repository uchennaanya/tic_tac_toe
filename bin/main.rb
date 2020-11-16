#!/usr/bin/env ruby

class UserInterface

    def initialize
        @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @moves = 0
        @player_2_sym = "o"
        @player_1_sym = "x"
    end

    def board
        puts <<-HEREDOC

            #{@cells[0]}  | #{@cells[1]} | #{@cells[2]}
            ---+---+---
            #{@cells[3]}  | #{@cells[4]} | #{@cells[5]}
            ---+---+---
            #{@cells[6]}  | #{@cells[7]} | #{@cells[8]}

        HEREDOC
    end

    def players
    
    puts "Player #1: Your name please"
    player_1 = gets.chomp
    
    puts "Please choose a symbol (X or O) #{player_1}"

    @player_1_sym = gets.chomp
        
        if @player_1_sym == "x" || @player_1_sym == "o"
           
            puts "#{player_1}'s symbol: #{@player_1_sym}"
            
            puts "Player #2 your name:"
            @player_2 = gets.chomp

            puts @player_1_sym == "x" ? player_2 = @player_2 + "'s symbol: o" : player_2 = @player_2 + "'s symbol: x"
            
            while @moves < @cells.size-1 do
                
            board
            puts "player #1 Please select a number (0-9) to be replaced by #{@player_1_sym}"
                player_1_move = gets.chomp

            board
            
            puts "Player #2 please select a (0-9) number to be replaced by #{@player_1_sym == 'x' ? @player_2_sym = 'o' : @player_2_sym = 'x'} "
                player_2_move = gets.chomp

            @moves += 2
            end
            puts "GAME OVER!"
        else
            puts "invalid symbol you can only choose X or O"

            puts "#{player_1}'s symbol: #{@player_1_sym}"
            puts "Player #2 your name:"
            player_2 = gets.chomp

            puts "#{player_1} Please select any available number to be replace by #{player_1_sym}"

            board
        end
    end
end

userinterface = UserInterface.new
userinterface.players