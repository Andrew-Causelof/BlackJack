require_relative 'player'
class Dealer < Player
  MAX_SCORE = 17
  def initialize
    super
  end
  #Its almost same mathod as player class' method -  print cards, but
  # Cards are hidden from us, we see only  2 stars
  def print_hidden_cards
    cards = @cards.size
    cards.times { print " " + "----" + " " }
    puts
    cards.times { print "|" + "    " + "|" }
    puts
    cards.times { print "|" + " ** " + "|" }
    puts
    cards.times { print "|" + "    " + "|" }
    puts
    cards.times { print " " + "----" }
    puts
  end

  def print_score
    puts " Dealer's score :"
    puts "#{@score}"
  end

  def decide
    @score < MAX_SCORE
  end
end
