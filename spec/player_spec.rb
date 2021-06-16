require 'player'

describe 'Player' do

  let(:hannah) { Player.new('Hannah') }

  describe '#name' do
    it 'return name' do
      expect(hannah.name).to eq 'Hannah'
    end
  end


end