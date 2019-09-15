#Here should be game
require_relative 'deck'
require_relative 'card'
require_relative 'player'
require_relative 'dealer'
require_relative 'gamer'
class Game
  attr_reader :gamer

  def initialize
    #Create new deck and mix all cards
    @deck = Deck.new
    #Create new gamer
    @gamer = Gamer.new
    #Create new Dealer
    @dealer = Dealer.new
    #Each player makes a bet
    @gamer.make_a_bet
    @dealer.make_a_bet
  end

  def clear_hands
    @gamer.clear
    @dealer.clear
  end

  def give_first_cards(player)
    2.times { give_a_card(player) }
  end

  def give_a_card(player)
    player.get_card(@deck.draw)
  end

  def question
    puts "1. pass  2. one more card  3. open cards"
    gets.chomp.to_i
  end

  def dealer_desicion
    give_a_card(@dealer) if @dealer.decide && @dealer.cards.size < 3
  end

  def open_cards
    system("clear")
    puts " Dealer's card :"
    @dealer.print_cards
    @dealer.print_score
    puts "Your cards :"
    @gamer.print_cards
    @gamer.print_score
    final_calculation
  end

  def final_calculation
    if @dealer.score > 21 && @gamer.score > 21
      puts ' You and Dealer lose 10 bucks'
    elsif @dealer.score < @gamer.score || @dealer.score > 21
      puts ' You win 10 bucks'
      @gamer.win_a_bet
    elsif @gamer.score < @dealer.score || @gamer.score > 21
      puts ' You lose 10 bucks'
      @dealer.win_a_bet
    else
      puts 'Dead heat'
      @dealer.dead_heat
      @gamer.dead_heat
    end
  end

  def make_desicion(answer)
    case answer
      # pass
      when 1
      dealer_desicion
      answer = question
      make_desicion(answer)
      # ask 3d card
      when 2
        give_a_card(@gamer) if @gamer.cards.size < 3
        dealer_desicion
        open_cards
        # ask to open cards
      when 3
        open_cards
      else
        puts 'Answer is incorrect, so we suppose you said - pass'
        dealer_desicion
    end
  end

  def play
    #We should clear hands and score since 2d round
    clear_hands
    #Give first 2 cards to gamer and 2 for dealer
    give_first_cards(@gamer)
    give_first_cards(@dealer)

    system("clear")
    puts " Dealer's card :"
    @dealer.print_hidden_cards

    puts "Your cards :"
    @gamer.print_cards
    @gamer.print_score

    answer = question
    make_desicion(answer)
    gets
  end
end
