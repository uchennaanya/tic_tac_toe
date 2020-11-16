#!/usr/bin/env ruby

# Your game is required to inform if the selected move is invalid (without computing what an invalid move is).
# One way you can achieve this is by storing a particular number to a variable and if a player
# chooses that number you can tell them that the move is invalid.
# This is just to mock the basic flow of the game and those not require any logic.
# Linter check is failing which means there are some lint errors, please check and correct those errors.
# The game should inform the player if the selected move is a winning move.
# or a draw (without computing the winning move).
# Just like I stated above you can assign a particular number to a variable and if that number is chosen
# you can assume that the game is won or it is a draw.
# Once you are done with the changes, please request another review.
# Happy coding
# slack(@ebeagusamuel)

class UserInterface
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @moves = 0
    @player2sym = 'o'
    @player1sym = 'x'
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

  def playermoves
    while @moves < @cells.size - 1

      board
      puts "player #1 Please select a number (0-9) to be replaced by #{@player1sym}"
      gets.chomp

      board
      puts 'Player #2 please select a (0-9) number to be replaced by ' + @player2sym = @player1sym == 'x' ? 'o' : 'x'
      gets.chomp

      @moves += 2
    end
    puts 'GAME OVER!'
  end

  def players
    puts 'Player #1: Your name please'
    player1 = gets.chomp

    puts "Please choose a symbol (X or O) #{player1}"

    @player1sym = gets.chomp

    if @player1sym == 'x' || @player1sym == 'o'

      puts "#{player1}'s symbol: #{@player1sym}"

      puts 'Player #2 your name:'
      player2 = gets.chomp

      puts @player1sym == 'x' ? "#{player2}'s symbol: o" : "#{player2}'s symbol: x"
      playermoves
    else
      puts 'invalid symbol you can only choose X or O'
      @player1sym = gets.chomp
      puts "#{player1}'s symbol: #{@player1sym}"

      puts 'Player #2 your name:'
      gets.chomp
    end
    playermoves
  end
end

userinterface = UserInterface.new
userinterface.players
