## Day 1 - Level 1-2

# Level 1
# You see before yourself a long hallway with stairs at the end. There is nothing in the way!

# Call warrior.walk! to walk forward in the Player "play_turn" method.

# Solution
class Player
  def play_turn(warrior)
	warrior.walk!
  end
end


# Level 2
# It is too dark to see anything, but you smell sludge nearby.

# Tip: Use warrior.feel.empty? to see if there is anything in front of you, and warrior.attack! to fight it. Remember, you can only do one action (ending in !) per turn.

#  --------			> = Stairs
#  |@   s  >|		@ = Test (20 HP)
#  --------			s = Sludge (12 HP)

# Solution
class Player
  def play_turn(warrior)
	if warrior.feel.empty?
		warrior.walk!
	else
		warrior.attack!
	end
  end
end
