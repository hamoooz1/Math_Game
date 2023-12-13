require './players'
require './question'

class Game
  attr_accessor :round

  def initialize(player1, player2)
    @players = [player1, player2]
    @round = 0;
  end

  def play_round
    @players.each do |player|
      question = Question.new
      response = question.ask_question

      if question.correct?(response)
        puts "#{player.name}: YES!, you're correct!"
      else
        puts "#{player.name}: Seriously, No!"
        player.lose_life
      end
      @round += 1;
    end
  end

  def game_over?
    @players.any? { |player| !player.alive? }
  end

  def announce_winner
    winner = @players.find { |player| player.alive? }
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end