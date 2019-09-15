class Card
  attr_reader :value, :name
  # Each card has a name and value according the game rate
  # to tune rate move to Deck.rb - > new deck method
  def initialize(name, value)
    @name = name
    @value = value
  end
  # Created this mathod to test, how correctly cards are showing up
  # I suppose it will be unusefull, because player should show up his own
  # so it could be removed
  def print
    puts " " + "----"
    puts "|" + "    " + "|"
    puts "|" + "#{@name}" + "|"
    puts "|" + "    " + "|"
    puts " " + "----"
  end
end
