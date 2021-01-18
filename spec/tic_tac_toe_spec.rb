require '../lib/board.rb'
require '../lib/player.rb'
require '../lib/game.rb'

describe Board do
  describe "#placement" do
    it "returns the user symbol" do
      board = Game.new
      expect(board.placement(2, 1)).to eql("X")
    end
  end
end