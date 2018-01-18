require 'player'

describe Player do
  subject(:player) { described_class.new("Ed") }
  let(:player2) { double :player2, receive_damage: nil }

  it "should return player name" do
    expect(player.name).to eq "Ed"
  end

  describe '#receive_damage' do
    it "reduces player own hit points" do
      expect(player.receive_damage).to eq 90
    end
  end
end
