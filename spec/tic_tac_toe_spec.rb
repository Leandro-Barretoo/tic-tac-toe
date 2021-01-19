require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

describe Board do
  let(:board) { Board.new }
  describe '#placement' do
    it 'returns the user symbol' do
      expect(board.placement(2, 1)).to eql('X')
    end

    it 'returns the user symbol' do
      expect(board.placement(4, 2)).to eql('O')
    end

    it 'returns the user symbol' do
      expect(board.placement(3, 2)).not_to eql('X')
    end
  end
end

describe Play do
  let(:player) { Play.new }
  describe '#comparison' do
    it 'compares two arrays and returns true if there is a winning combination' do
      expect(player.comparison([1, 2, 4, 3])).to eql(true)
    end

    it 'compares two arrays and returns false if there isn\'t a winning combination' do
      expect(player.comparison([1, 2])).not_to eql(true)
    end
  end
end

describe Game do
  let(:game) { Game.new }
  describe '#validate' do
    it 'validates if the given position isn\'t available' do
      game.validate(1, game.one_acc, 1)
      expect(game.validate(1, [], 1)).to eql(false)
    end

    it 'validates if the given position is available' do
      expect(game.validate(1, [], 1)).to eql(true)
    end

    it 'returns false if the given input is invalid' do
      expect(game.validate('something', [], 1)).not_to eql(true)
    end

    it 'returns false if the given input is not between 1 - 9' do
      expect(game.validate(15, [], 1)).not_to eql(true)
    end
  end
end
