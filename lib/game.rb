class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = other_player(current_turn)
  end

  def other_player(player)
    player == player1 ? player2 : player1
  end


end