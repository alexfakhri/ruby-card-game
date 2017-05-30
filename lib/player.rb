class Player

  attr_accessor :hand, :score
  attr_reader :name

  def initialize(name)
    @name = name
    @hand = [] #This is the players card hand, maybe needs a better name
    @score = 0
  end

end
