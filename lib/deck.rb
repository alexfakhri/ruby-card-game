class Deck

  #Constants for standard deck of playing cards
  CARD_COUNT = 52
  RANKS = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
  SUITS = %w{Spades Hearts Diamonds Clubs}

  attr_reader :cards

  def initialize
      @cards = build_deck
  end

  def build_deck
    @cards = RANKS.product(SUITS).shuffle
  end

end
