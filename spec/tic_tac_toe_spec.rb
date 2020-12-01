require_relative '../lib/logic.rb'

describe GameLogic do
  let(:board) { [1, 2, 3, 4, 5, 6, 7, 8, 9] }

  gamelogic = GameLogic.new

  describe '#draw?' do
    it 'returns false if there is a tie in the game' do
      expect(gamelogic.draw?(board)).to eq(false)
    end
  end
  describe '#win?' do
    it 'checks if any combination is true' do
      expect(gamelogic.win?(board)).to eq(false)
    end
  end
  describe '#win?' do
    it 'checks if any combination is false' do
      expect(gamelogic.win?(board)).to_not eq(true)
    end
  end
end
