require 'game'

describe Game do

  let(:deck) { Deck.new }

  describe 'Starting the game' do

    let(:player_1) { double(:player, name: "Alex") }
    let(:player_2) { double(:player, name: "Bill") }
    subject { described_class.new(deck, [player_1, player_2]) }

    it "initializes with an array of players" do
      expect(subject.players.count).to eq 2
    end

    it "initializes with a deck of 52 cards" do
      expect(subject.deck.cards.count).to eq 52
    end

  end

  describe 'dealing cards' do

    #Needs refactoring to use doubles
    let(:player_1) { Player.new("Alex") }
    let(:player_2) { Player.new("Bill") }
    subject { described_class.new(deck, [player_1, player_2]) }

    it "deals the number of cards it's told to" do
      subject.deal_cards(4)
      expect(subject.players.each { |player| player.hand.count == 4})
      expect(subject.deck.cards.count).to eq 44
      end

  end

  describe 'scoring and finishing the game' do

    #Needs refactoring to use doubles
    let(:player_1) { Player.new("Alex") }
    let(:player_2) { Player.new("Bill") }
    subject { described_class.new(deck, [player_1, player_2]) }

    it "checks the rank of the card and returns 13 if King" do
      expect(subject.check_values("K")).to eq 13
    end

    it "checks the rank of the card and returns 12 if Queen" do
      expect(subject.check_values("Q")).to eq 12
    end

    it "checks the rank of the card and returns 11 if Jack" do
      expect(subject.check_values("J")).to eq 11
    end

    it "checks the rank of the card and returns 1 if Ace" do
      expect(subject.check_values("A")).to eq 1
    end

    it "checks the rank of the card and returns the face value of not a letter" do
      expect(subject.check_values("8")).to eq 8
    end

    before do
      player_1.hand = [["10", "Spades"], ["9", "Clubs"], ["5", "Spades"], ["9", "Hearts"]]
      player_2.hand =  [["K", "Diamonds"], ["4", "Hearts"], ["J", "Diamonds"], ["8", "Diamonds"]]
      subject.calculate_score
    end

    it "calculates the score of each players hand" do
      expect(subject.players.first.score).to eq 33
      expect(subject.players.last.score).to eq 36
    end

    it "returns the winner of the game" do
      expect(subject.winner.name).to eq "Bill"
    end

  end

end
