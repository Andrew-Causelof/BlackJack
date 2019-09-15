class Player
  attr_reader :score, :money, :cards

  def initialize
    @score = 0
    @money = 100
    @cards = []
  end

  def get_card(card)
    @score += card.value
    @cards << card
  end

  def print_cards
    cards = @cards.size
    cards.times { print " " + "----" + " " }
    puts
    cards.times { print "|" + "    " + "|" }
    puts
    @cards.each do |card_name|
      print "|" + "#{card_name.name}" + "|"
    end
    puts
    cards.times { print "|" + "    " + "|" }
    puts
    cards.times { print " " + "----" }
    puts
  end

  def make_a_bet
    @money -= 10
  end

  def win_a_bet
    @money += 20
  end

  def dead_heat
    @money += 10
  end

  def clear
    @cards.clear
    @score = 0
  end

end
