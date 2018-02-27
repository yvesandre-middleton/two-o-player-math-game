require 'pry'
require './player'
require './questions'


player1 = Player.new('Yves')
player2 = Player.new('Gabriel')

puts "****************************************"
puts "||                                    ||"
puts "|| Welcome to Two-O-Player Math Game! ||"
puts "||                                    ||"
puts "****************************************"


  def new_turn(current_player)
    question = Question.new()
    puts "#{current_player.name}: What does #{question.ask_question} equal?"
    answer = gets.chomp.to_i
    if answer == question.validate_question
      puts "Answer Correct !"
    else
      current_player.decrease_lives
      puts "YOUR'E WRONG!"
    end
  end

loop do
  new_turn(player1)
  break puts "Player 2 Won ! with a score of #{player2.lives} / 3" if player1.game_over?
  new_turn(player2)
  break puts "Player 1 Won ! with a score of #{player1.lives} / 3" if player2.game_over?
  puts "#{player1.name}: #{player1.lives} / 3 vs #{player2.name}: #{player2.lives} / 3"
  puts "New turn"
end

puts "GAME OVER !"


# binding.pry


