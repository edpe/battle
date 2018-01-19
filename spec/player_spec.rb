require 'player'

describe Player do
  subject(:player) { described_class.new("Ed") }



  it "should return player name" do
    expect(player.name).to eq "Ed"
  end

  describe '#receive_damage' do
    it "reduces player own hit points" do
      allow(player).to receive(:random_number).and_return 27
      expect { player.receive_damage }.to change { player.hp }.by(-27)
    end
  end

  describe '#dead?' do
    it ' tests a player is dead' do
      player = described_class.new('ed', 0)
      expect(player.dead?).to eq true
    end
  end

  describe '#random_number' do
    it "returns a random integer" do
      expect(player.random_number).to be_a Integer
    end
  end
end
