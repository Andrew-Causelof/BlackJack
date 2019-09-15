require_relative 'player'
class Gamer < Player
  def initialize
    super
  end

  def print_score
    puts 'Your scores:'
    puts "#{@score}"
  end
end
