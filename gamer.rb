require_relative 'player'
class Gamer < Player
  def initialize
    super
  end

  def print_score
    return "Your scores: #{@score}"
  end
end
