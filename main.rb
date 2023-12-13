require './game'
require './players'
require './question'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new(player1, player2)

until game.game_over?
  if (game.round > 0)
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  puts "----- New Turn -----"
  end
  game.play_round
end

game.announce_winner