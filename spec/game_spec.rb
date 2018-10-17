require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:dummy1) {double :player }
  let(:dummy2) {double :player }

  describe "#attack" do
    it "reduces HP" do
      expect(dummy2).to receive(:receive_damage)
      game.attack(dummy2)
    end
  end
end
