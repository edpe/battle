require 'player'
describe Player do
  subject(:player) { described_class.new("Ed")}
  it "should return player name" do
    expect(player.name).to eq "Ed"
  end

end
