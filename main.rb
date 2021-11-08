require './question.rb'
require './gameinfo.rb'
require './player.rb'


player_one = Player.new
player_two = Player.new
game = Gameinfo.new(player_one, player_two)

while game.active_game

  # generate new question
  question = Question.new
  question.print_question game.current_player
  puts question.sum
  
  # takes in player input
  print "> "
  player_answer = gets.chomp
  
  # validates answer
  question.answer_validate(player_answer, game.current_player)
  
  # shows score and changes player
  game.next_turn
  
end

