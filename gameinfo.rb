class Gameinfo
  attr_reader :player_1, :player_2
  attr_accessor :current_player, :active_game

  def initialize(p1, p2)
    @active_game = true
    @player_1 = p1
    @player_2 = p2
    @current_player = player_1
  end

  def next_turn
    waiting_player = current_player == player_1 ? player_2 : player_1

    if current_player.life == 0
      puts "#{waiting_player.name} wins with a score of #{waiting_player.life}/3"
      puts "----- GAME OVER -----"
      self.active_game = false
    else
      puts "P1: #{player_1.life}/3 vs P2: #{player_2.life}/3"
      puts "----- NEXT TURN -----"
      self.current_player = waiting_player
    end

  end

end
