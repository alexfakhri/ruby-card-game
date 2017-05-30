require './lib/game'
require './lib/player'
require './lib/deck'

@deck = Deck.new
@players = []

def start_game
  input_players
end

def input_players
  puts "Please enter the number of players that will be playing"
  @number_of_players = gets.chop
  puts "Please enter the number of cards you would like each payer to have"
  @number_of_cards = gets.chop
  error_check
end

#Need to put in check if entered numbers are integers or not
def error_check
  if @number_of_players.to_i * @number_of_cards.to_i > Deck::CARD_COUNT
    error_message
    input_players
  else
    get_player_names
  end
end

def error_message
  puts "Sorry, you're input was incorrect"
  puts "please ensure you enter numbers, and ensure the total number of players multiplied by the number of cards is less than 52"
end

def get_player_names
  puts "#{@number_of_players} will be playing in this game."
  puts "Please enter the name of the first player:"
  @number_of_players.to_i.times do |player|
    player = gets.chomp
    @players << Player.new(player)
    puts "Please enter the name of the next player:"
  end
  setup_game
end

def setup_game
  @game = Game.new(@deck, @players)
  @game.deal_cards(@number_of_cards.to_i)
  puts "The game has been setup and each player has been dealt #{@number_of_cards} cards"
  calculate_game_scores
end

def calculate_game_scores
  @game.calculate_score
  @game.players.each do |player|
    puts "#{player.name} has a score of #{player.score}"
  end
  finish_game
end

def finish_game
  puts "And the winner of the game is:"
  puts @game.winner.name
end

start_game
