class Player
  def play_turn(warrior)
    @health ||= warrior.health

    if warrior.health < @health
      # taking damage
      # update health
      @health = warrior.health

      if warrior.feel.captive?
        warrior.rescue!
      elsif warrior.feel.empty?
        warrior.walk!
      else
        warrior.attack!
      end
    elsif warrior.feel.empty?
      # safe, heal if necessary
      if warrior.health <= 18
        warrior.rest!
        @health = warrior.health
      else
        warrior.walk!
      end
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      # enemy! attack!
      warrior.attack!
    end
  end
end
