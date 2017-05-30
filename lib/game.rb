class Game

  attr_reader :deck, :players

  #Initializing the game with players and deck of cards
  def initialize(deck, players)
    @deck = deck
    @players = players
  end

  #Dealing cards, can take any number as argumet for the number of cards dealt
  def deal_cards(cards)
    @players.each do |player|
      player.hand += @deck.cards.pop(cards)
    end
  end

  def calculate_score
    @players.each do |player|
      player.hand.each do |rank, suit|
        player.score += check_values(rank)
      end
    end
  end

  #Needs to be modyfied ti return draw if there is a draw
  def winner
    @players.max_by do |player|
      player.score
    end
  end

  #Replacing picture card ranks with numeric values
  def check_values(value)
    case value
    when 'K' then 13
    when 'Q' then 12
    when 'J' then 11
    when 'A' then 1
    else value.to_i
    end
  end

end
