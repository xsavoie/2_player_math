class Question
  attr_reader :sum, :num_1, :num_2

  def initialize
    @num_1 = rand(1...20)
    @num_2 = rand(1..20)
    @sum = @num_1 + @num_2
  end

  def print_question(current_player)
    puts "#{current_player.name}: What does #{num_1} plus #{num_2} equal?"
  end

  def answer_validate(answer, current_player)
    if sum.to_s == answer
      puts "Yes! You are correct"
    else
      puts "Seriously? No!"
      current_player.life -= 1
    end
  end

end
