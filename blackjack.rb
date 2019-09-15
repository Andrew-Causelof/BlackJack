require_relative 'game'

puts " Please write down your name:"
_name = gets.chomp

game = Game.new

loop do
  system ('clear')

  if game.gamer.money > 0
    puts "Your balance is #{game.gamer.money}USD"
    gets
    game.play
    puts 'Will you play again y/n'
    answer = gets.chomp.to_str
    break if answer == 'n'
  else
    break
  end
end
