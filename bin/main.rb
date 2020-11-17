#!/usr/bin/env ruby

class UserInterface
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @moves = 0
    @player2sym = 'o'
    @player1sym = 'x'
    @winingmove = 0
    @invalidmove = ''
    @draw = 0
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
      gets.chomp.to_i

      board
      puts 'Player #2 please select a (0-9) number to be replaced by ' + @player2sym = @player1sym == 'x' ? 'o' : 'x'
      gets.chomp.to_i
      @moves += 2
    end
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
      puts 'GAME OVER!'
    else
      puts 'invalid symbol you can only choose X or O'
      @player1sym = gets.chomp
      puts "#{player1}'s symbol: #{@player1sym}"

      puts 'Player #2 your name:'
      gets.chomp
      playermoves

    end
    puts 'GAME OVER!'
  end
end

userinterface = UserInterface.new
userinterface.players
