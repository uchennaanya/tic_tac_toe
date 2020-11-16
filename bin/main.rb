#!/usr/bin/env ruby
=begin
 Add github action's linting configuration files (.github/workflow/*) to setup github action
 The game should inform the player if the selected move is invalid (without computing what an invalid move is)
 The game should inform the player if the selected move is a winning move (without computing the winning move)
 The game should inform the players if the selected move is a draw move (without computing draw)
 The game should repeat all actions for the next player's move
 A loop is needed in this game (recommended is while but anything else will do) (OdinProject hint)
 A loop needs to be terminated at some point (after a winning move or draw to be more specific). I recommend you use a conditional variable for the while loop.
Example:
game_on = true

# initial instructions for player

while game_on

  # loop for each move

  if winner # and/or draw (the exact condition in this milestone is not important)

    game_on = false

  end

end

[OPTIONAL]

 When you start a new milestone, start on the top of the last milestone branch, e.g., run git checkout -b new_milestone inside the last_milestone branch

=end
class UserInterface
    def initialize
        @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @symbol = ['o', 'x']
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

    symbol = gets.chomp
        
        if symbol == "x" || symbol == "o"
           
            puts "#{player_1}'s symbol: #{symbol}"
            
            puts "Player #2 your name:"
            player_2 = gets.chomp

            puts symbol == "x" ? player_2 = "#{player_2}'s symbol: o" : player_2 = "#{player_2}'s symbol: x"
            moves = 0
            while moves > @cells.size do
                player_1 = gets.chomp
            board
            
            puts "#{player_1} Please select any available number to be replaced by #{symbol}"

            board
                player_2 = gets.chomp
            puts "#{player_2} select any available number to be replaced by #{symbol == 'x' ? player_2 = 'o' : player_2 = 'x'} "
            end
            else
                puts "GAME OVER"
            end

            puts "invalid symbol you can only choose X or O"
            puts "#{player_1}'s symbol: #{symbol}"
            puts "Player #2 your name:"
            player_2 = gets.chomp

            puts "#{player_1} Please select any available number to be replace by #{symbol}"

            board
        end
    end

userinterface = UserInterface.new
userinterface.players