class Card
  attr_reader :card_value, :name
  # Each card has a name and value according the game rate
  # to tune rate move to Deck.rb - > new deck method
  def initialize(card, suit)
    @name = "#{card + suit}"
    @card_value = card
  end

end
