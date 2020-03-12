class Player
  def play_turn(warrior)
    if !warrior.feel.empty?
      warrior.attack!
    elsif warrior.health <= 18
      warrior.rest!
    else
      warrior.walk!
    end
  end
end
