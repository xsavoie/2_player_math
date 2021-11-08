class Player
  attr_reader :player_id, :name
  attr_accessor :life
  @@id = 1

  def initialize
    @player_id = @@id
    @name = "Player #{@player_id}"
    @life = 3
    @@id += 1
  end

end
