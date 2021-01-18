require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

describe Board do
  describe "#placement" do
    it "returns the user symbol" do
      board = Board.new
      expect(board.placement(2, 1)).to eql("X")
    end
  end
end

describe Play do
  describe "#comparison" do
    it 'compares two arrays and returns true if there is a winning combination' do
      player = Play.new
      expect(player.comparison([1, 2, 3])).to eql(true)
    end

    it 'compares two arrays and returns false if there isn\'t a winning combination' do
      player = Play.new
      expect(player.comparison([1, 2])).not_to eql(true)
    end
  end
end

describe Game do
  describe "#validate" do
    it 'validates if the given position isn\'t available' do
      game = Game.new
      game.validate(1, game.one_acc, 1)
      expect(game.validate(1, [], 1)).to eql(false)
    end

    it 'validates if the given position is available' do
      game = Game.new
      expect(game.validate(1, [], 1)).to eql(true)
    end
  end
end
