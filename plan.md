LOOP: as long as active_game == true, loop through quiz

quiz steps
1- generate a question
2- take input from player
3- compare input with question answer
4- return correct of false message
5- evaluate if current player is at 0 life
  -if yes --> 
    print winner score
    game over
    change active_game variable to false
  -if no --> 
    print both player scores
    next question
--Restart at 1

Tracking turns

question: 
  display name in question
  under answer_validate --> deduct life from player.life

gameinfo:
  under next_turn
    evaluate if current player is dead
    display life at end of each round



# classes: 

## question class
question format:
  [player#]: what does num1 plus num2 equals?
  --> will need to alternate between player 1 and player 2
  needs to generate 2 random numbers between 1-20 and need sum of both numbers

methods needed:
  initialize with 2 random numbers variables
  sum random numbers (inside initialize?)

  puts question method
    puts "What does #{num_1} plus #{num_2} equal?

  get answer method
  print "> "
  answer = gets.chomp

  if answer = sum --> Correct
    else player life -1 


response format:
  [player#]: YES! You are correct.
    OR
  [player#]: Seriously? No!

## gameinfo class

	current turn
		alternate between player1 or player2
    get and set value

	player 1 score & player 2 score
    get and set values

AFTER EVERY ANSWER
  checks if player has life == 0
    if yes print:
      score of winner
      ----- GAME OVER -----
    if no print:
      score of the game
      ----- NEW TURN ----- 
  
  Set current_player variable to other player

  ## game loop
  set active_game boolean variable 
  while(active_game) print new questions
      

