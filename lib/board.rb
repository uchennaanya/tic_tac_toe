#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockLength
system('clear')
loop do
  puts "-------------------- Welcome --------------------\n------------------ Tic-Tac-Toe ------------------\n\n"
  print 'X Player\'s name: '
  name1 = gets.chomp
  print 'O Player\'s name: '
  name2 = gets.chomp
  playerx = [name1, 'X']
  playero = [name2, 'O']
  player = playerx
  # Create Player class
  grid = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  game_over = false
  loop do
    system('clear')
    # Print board function here
    puts " #{grid[0][0]} | #{grid[0][1]} | #{grid[0][2]}\n---+---+---\n #{grid[1][0]} | #{grid[1][1]} | #{grid[1][2]}"
    puts "---+---+---\n #{grid[2][0]} | #{grid[2][1]} | #{grid[2][2]}\n\n\n"
    # Get play from player function here
    print "#{player[0]}\'s turn. Enter <row_number,col_number> (1-3)\nPlay: "
    play = gets.chomp
    row = play[0].to_i
    col = play[2].to_i
    unless row.positive? && row < 4 && col.positive? && col < 4
      puts "\n\n===============================\n------- Invalid entry ---------\n==============================="
      sleep(1)
      next
    end
    row -= 1
    col -= 1
    # Validate move function here
    (0..2).each do |i|
      (0..2).each do |j|
        if i == row && j == col
          if (grid[i][j]).to_s == ' '
            grid[i][j] = player[1]
          else
            puts "\n\n===============================\n-------- Space taken ----------\n==============================="
            sleep(1)
            player = player == playerx ? playero : playerx
          end
        end
      end
    end
    # Validate win lose or draw function here
    if play == '3,3'
      puts "\n\n==============================\n--------- #{player[0]} won -----------\n=============================="
      sleep(1)
      game_over = true
    end
    player = player == playerx ? playero : playerx
    break if game_over
  end
  puts "\n\nWanna play again? <n> to decline"
  decision = gets.chomp.upcase
  break if decision == 'N'
end
# rubocop:enable Metrics/BlockLength`
