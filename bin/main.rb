#!/usr/bin/env ruby

class UserInterface

    def initializer(symbol, player1, player2, board)
    @symbol = symbol
    @player1 = player1
    @player2 = player2
    @board = board
    end

    def board
    board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    board.each {|items| p items }
    end

    def player

    puts "Player one: Your name please"
    player1 = gets.chomp
    
    puts "Please choose a symbol (X or O) #{player1}"

    symbol = gets.chomp
        if symbol == "x" || symbol == "o"
            puts "#{player1}'s symbol: #{symbol}"
            puts "The board..."
            
            puts "______________"
                    board
            puts "______________"
            puts "#{player1} Playing..."

           

            player1_move = gets.chomp
            else
            puts "invalid symbol you can only choose X or O"
            player1_move = gets.chomp
            puts "#{player1} Playing..."

            puts "______________"
                    board
            puts "______________"

            choice = gets.chomp
        end
    end
end

userinterface = UserInterface.new
userinterface.player