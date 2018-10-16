
require 'player'

describe Player do
  subject(:player) { described_class.new("Lucas") }

  it "responds to name" do
    expect(player.name).to eq("Lucas")
  end
end
