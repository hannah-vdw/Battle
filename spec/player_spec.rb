require 'player'

describe Player do

  let(:hannah) { Player.new('Hannah') }
  let(:shaun) { Player.new('Shaun') }

  describe '#name' do
    it 'return name' do
      expect(hannah.name).to eq 'Hannah'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(hannah.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'triggers #receive_damage on other player' do
      expect(shaun).to receive(:receive_damage)
      hannah.attack(shaun)
    end
  end

  describe '#receive_damage' do
    it 'takes player hp down 10 points' do
      expect { shaun.receive_damage }.to change { shaun.hit_points }.by(-10)
    end
  end

end