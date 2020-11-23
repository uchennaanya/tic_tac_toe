def draw?(board)
    board.all? { |i| i.is_a?(String) }
end

def win?(board)
    combinations = [
      [board[0], board[1], board[2]],
      [board[3], board[4], board[5]],
      [board[6], board[7], board[8]],
      [board[0], board[3], board[6]],
      [board[1], board[4], board[7]],
      [board[2], board[5], board[8]],
      [board[0], board[4], board[8]],
      [board[2], board[4], board[6]]
    ]
    combinations.any? do |combo|
      combo.all? { |i| i == 'X' } || combo.all? { |i| i == 'O' }
    end
  end
