require 'game'

describe Game do
  subject(:game) { described_class.new(dummy1, dummy2) }
  let(:dummy1) {double :player1 }
  let(:dummy2) {double :player2 }

  describe '#player_1' do
    it "retrieves player 1" do
      expect(game.player_1).to eq dummy1
    end
  end

  describe '#player_2' do
    it "retrieves player 2" do
      expect(game.player_2).to eq(dummy2)
    end
  end

  describe "#attack" do
    it "reduces HP" do
      expect(dummy2).to receive(:receive_damage)
      game.attack(dummy1)
    end
  end

  describe "#turns" do
    it "shows player 1 as the first turn" do
      expect(game.current_turn).to eq dummy1
    end

    it "changes to player 2 for the second turn" do
      game.switch_turn
      expect(game.current_turn).to eq dummy2
    end
  end
end
