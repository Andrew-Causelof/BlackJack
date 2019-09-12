require_relative 'card'

class Deck
  attr_reader :card_deck
  HEARTS =  "<3"
  TILES =   "<>"
  CLOVERS = "+ "
  PIKES =   "^ "

  FACE_NUMBERS  =  [" 2", " 3", " 4", " 5", " 6", " 7", " 8", " 9","10"]
  FACE_PICTURES = [" J", " Q", " K"]
  FACE_ACES     = [" A"]

  def initialize
    @card_deck = []
    @drawn_card = []
    new_deck
  end

  def new_deck
    suits = [HEARTS, TILES, CLOVERS, PIKES]
    suits.each do |suit|
      FACE_NUMBERS.each do |card|
        @card_deck << Card.new("#{card + suit}", card.to_i)
      end
      FACE_PICTURES.each do |card|
        @card_deck << Card.new("#{card + suit}", 10)
      end
      FACE_ACES.each do |card|
        @card_deck << Card.new("#{card + suit}", 11)
      end
    end
  end

  def draw
    card = @card_deck.first
    @drawn_card << card
    @card_deck.shift
    return card
  end
end

#test = Deck.new
#test.card_deck.each do |card|
#  puts card.value
#end
