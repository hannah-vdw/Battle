require 'game'

describe Game do

  let(:hannah) { double :player }
  let(:shaun) { double :player }
  let(:game) { described_class.new(hannah, shaun) }

  describe '#Player1' do
    it 'creates player1' do
      expect(game.player1).to eq(hannah)
    end
  end

  describe '#Player2' do
    it 'creates player2' do
      expect(game.player2).to eq(shaun)
    end
  end

  describe '#attack' do
    it 'triggers #receive_damage on other player' do
      expect(shaun).to receive(:receive_damage)
      game.attack(shaun)
    end
  end

  describe '#receive_hit' do
    it 'Hannah goes first' do
      expect(game.current_turn).to eq(hannah)
    end
  end

  describe '#switch_turn' do
    it 'switches between players' do
      game.switch_turn
      expect(game.current_turn).to eq(shaun)
    end
  end 

end

