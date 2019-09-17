class Card
  attr_reader :value, :name
  # Each card has a name and value according the game rate
  # to tune rate move to Deck.rb - > new deck method
  def initialize(name, value)
    @name = name
    @value = value
  end

end
