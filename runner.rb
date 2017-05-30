require './lib/game'
require './lib/player'
require './lib/deck'

@player = Player.new('Alex')
@player_1 = Player.new('Bill')
@player_2 = Player.new('Bill')
@deck = Deck.new
@game = Game.new(@deck, [@player, @player_1, @player_2])
