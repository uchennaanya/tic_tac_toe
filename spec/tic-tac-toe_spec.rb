require ("../lib/logic.rb")

describe GameLogic do
    let(:board) {[1, 2, 3, 4, 5, 6, 7, 8, 9]}

    gamelogic = GameLogic.new

    describe "#draw?" do
        it "returns false if there is a tie in the game" do
            expect(gamelogic.draw?(board)).to eq(false)
        end
    end
end
