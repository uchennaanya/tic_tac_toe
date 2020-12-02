#!/usr/bin/env ruby

require_relative '../lib/logic'

# disable: Metrics/MethodLength

class Interface
  attr_accessor :gamelogic

  private

  def initialize
    self.gamelogic = GameLogic.new
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player1 = nil
    @player2 = nil
  end

  def display_board(_board)
    puts <<-HEREDOC
      #{@board[0]} | #{@board[1]} | #{@board[2]}
      -----------
      #{@board[3]} | #{@board[4]} | #{@board[5]}
      -----------
      #{@board[6]} | #{@board[7]} | #{@board[8]}
    HEREDOC
  end

  def welcome_title
    puts <<-HEREDOC
      -------------How to Play--------------------------------
      The 1st player is represented by X, the 2nd player is O.
      Each chooses numbers from 1 to 9 to select desired cell
      --------------------------------------------------------
    HEREDOC
  end

  def validate_name(name)
    loop do
      break unless name.strip == ''

      print 'Please enter a name: '
      name = gets.chomp
    end
    name
  end

  def player_name
    puts 'Player 1 please your name:'
    @player1 = gets.chomp
    @player1 = validate_name(@player1)
    puts 'Player 2 please your name:'
    @player2 = gets.chomp
    @player2 = validate_name(@player2)
    [@player1, @player2]
  end

  def validate_position(position, board)
    loop do
      break if (1..9).include?(position) && !board[position - 1].is_a?(String)

      puts 'Please enter a valid number from 1 to 9 to be replaced by your symbol' unless (1..9).include?(position)

      position = gets.chomp.to_i

      puts 'Position already taken , Please choose another: '
      position = gets.chomp.to_i
    end
    position
  end

  def info
    welcome_title

    puts 'Enter any key to start or C to cancel.'
    answer = gets.chomp.downcase
    abort if answer == 'c'

    @player1, @player2 = player_name

    puts "#{@player1} will be using 'X', while #{@player2} will be using 'O'"
  end

  public

  def play
    info

    display_board(@board)

    active_player = @player1
    loop do
      puts "#{active_player}: Choose a poistion"
      position = gets.chomp.to_i
      position = validate_position(position, @board)
      @board[position - 1] = active_player == @player1 ? 'X' : 'O'
      if gamelogic.win?(@board)
        display_board(@board)

        puts "Congratulations! #{active_player} is the winner!"
        break
      elsif gamelogic.draw?(@board)
        display_board(@board)
        puts 'the game is a tie, try again'
        break
      end

      display_board(@board)
      active_player = active_player == @player1 ? @player2 : @player1
    end
  end
end

interface = Interface.new
interface.play

# enable: Metrics/MethodLength
