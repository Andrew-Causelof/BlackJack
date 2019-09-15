class Player
  attr_reader :score, :money, :cards

  def initialize
    @score = 0
    @money = 100
    @cards = []
  end

  def get_card(card)
    #according the task we should check current player' score
    # before adding scores for aces, it may be 1 or 11
    if card.value == 11
       if @score > 10
         @score += 1
       else
         @score += 11
       end
    else
      @score += card.value
    end
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
