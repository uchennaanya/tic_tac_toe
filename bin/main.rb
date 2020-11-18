#!/usr/bin/env ruby
# rubocop:disable Metrics/CyclomaticComplexity

class UserInterface
  def initialize
    @player1 = nil
    @player2 = nil
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player2sym = 'o'
    @player1sym = 'x'
    @winingmove = 5
    @invalidmove = 3
    @draw = 8
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
    # currentplayer = @player1
    # currentplayersymbol = @player1sym
    playerchoice = true

    while playerchoice
      board
      puts "#{currentplayer} Please select a number (0-9) to be replaced by #{currentplayersymbol}"
      move = gets.chomp.to_i
      if move == @winingmove
        puts "#{currentplayer} is the Winner"
        playerchoice = false
      elsif move == @draw
        puts 'The game ends in draw!'
        playerchoice = false
      elsif move == @invalidmove
        puts 'Invalid move!'
      else
        currentplayer = currentplayer == @player1 ? @player2 : @player1
        currentplayersymbol == @player1sym ? currentplayersymbol = @player2sym : currentplayer = @player1sym
      end
    end
  end

  def players
    puts 'Player #1: Your name please'
    @player1 = gets.chomp

    puts "Please choose a symbol (X or O) #{@player1}"

    @player1sym = gets.chomp

    if @player1sym == 'x' || @player1sym == 'o'

      puts "#{@player1}'s symbol: #{@player1sym}"

      puts 'Player #2 your name:'
      @player2 = gets.chomp

      puts @player1sym == 'x' ? "#{@player2}'s symbol: o" : "#{@player2}'s symbol: x"
      playermoves
    else
      puts 'invalid symbol you can only choose X or O'
      @player1sym = gets.chomp
      puts "#{@player1}'s symbol: #{@player1sym}"

      puts 'Player #2 your name:'
      gets.chomp

    end
    playermoves
  end
end

userinterface = UserInterface.new
userinterface.players

# rubocop:enable Metrics/CyclomaticComplexity