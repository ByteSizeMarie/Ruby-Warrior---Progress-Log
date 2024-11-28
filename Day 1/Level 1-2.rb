## Day 1

# Level 1
class Player
  def play_turn(warrior)
	warrior.walk!
  end
end

# Level 2
class Player
  def play_turn(warrior)
	if warrior.feel.empty?
		warrior.walk!
	else
		warrior.attack!
	end
  end
end
