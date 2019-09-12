class Card
  attr_reader :value, :suit

  def initialize(name, value)
    @name = name
    @value = value
  end

  def print
    puts " " + "-" * 4
    puts "|" + "    " + "|"
    puts "|" + "#{@name}" + "|"
    puts "|" + "    " + "|"
    puts " " + "-" * 4
  end

  def get_value
    #it needs to write a method to get value and save to @value
  end

end

#test = Card.new("K<>",10)
#test.print_card
