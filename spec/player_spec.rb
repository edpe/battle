require 'player'

describe Player do
  subject(:player) { described_class.new("Ed") }


  it "should return player name" do
    expect(player.name).to eq "Ed"
  end

  describe '#receive_damage' do
    it "reduces player own hit points" do
      expect(player.receive_damage).to eq 90
    end
  end

  describe '#dead?' do
    it ' tests a player is dead' do
      player = described_class.new('ed', 0)
      # allow(Player).to receive(:hp).and_return 0
      expect(player.dead?).to eq true
    end
  end
end
