require 'deck'

describe Deck do

  it "has an array of ranks" do
    expect(Deck::RANKS).to eq ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  end

  it "has an array of suits" do
    expect(Deck::SUITS).to eq ["Spades", "Hearts", "Diamonds", "Clubs"]
  end

  it 'initialise with a full deck of 52 cards' do
    expect(subject.cards.count).to eq Deck::CARD_COUNT
  end

end
