
require 'player'

describe Player do
  subject(:player) { described_class.new("Lucas") }

  it "responds to name" do
    expect(player.name).to eq("Lucas")
  end

  it "returns it's HP" do
    expect(player.hp).to eq(100)
  end


end
