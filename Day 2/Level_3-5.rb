## Day 2 - Level 3-5

# Level 3
# The air feels thicker than before. There must be a horde of sludge.

# Tip: Be careful not to die! Use warrior.health to keep an eye on your health, and warrior.rest! to earn 10% of max health back.

#  ---------			> = Stairs
#  |@ s ss s>|			@ = Test (20 HP)
#  ---------			s = Sludge (12 HP)

# Solution
class Player
	def play_turn(warrior)
    		if warrior.health < 20 && warrior.feel.empty?
      			warrior.rest!
    		elsif warrior.feel.empty?
      			warrior.walk!
    		else
      			warrior.attack!
    		end
  	end
end


# Level 4 
# You can hear bow strings being stretched.

# Tip: No new abilities this time, but you must be careful not to rest while taking damage. Save a @health instance variable and compare it on each turn to see if you're taking damage.

#  -------			 	> = Stairs
#  |@ Sa S>|			@ = Test (20 HP)
#  -------				S = Thick Sludge (24 HP)
# 						a = Archer (7 HP)

# Solution (ChatGPT)
class Player
  	def initialize
    		@health = 20 	# full health 
  	end

  	def play_turn(warrior)
   		 if taking_damage?(warrior)

     			 if warrior.feel.empty?
       				 warrior.walk!
      			else
       				 warrior.attack!
     			 end
    		elsif warrior.health < 20
      			warrior.rest!
    		elsif warrior.feel.empty?
      			warrior.walk!
    		else
     			 warrior.attack!
    		end

    		@health = warrior.health
  	end

  	private # ??

  	def taking_damage?(warrior)
    		warrior.health < @health
  	end
end

# Level 5
# You hear cries for help. Captives must need rescuing.

# Tip: Use warrior.feel.captive? to see if there is a captive and warrior.rescue! to rescue him. Don't attack captives.

#  -------				> = Stairs
#  |@ CaaSC|			@ = Test (20 HP)
#  -------				C = Captive (1 HP)
#						a = Archer (7 HP)
#						S = Thick Sludge (24 HP)

# Solution
class Player
  	def initialize
    		@health = 20 	# full health 
  	end

  	def play_turn(warrior)
		if warrior.feel.captive?
			warrior.rescue!
		elsif taking_damage?(warrior)
   			if warrior.feel.empty? 
				warrior.walk!
			else
				warrior.attack!
			end
		elsif warrior.health < 20
			warrior.rest!
		elsif warrior.feel.empty?
			warrior.walk!
		else
			warrior.attack!
		end
		
		@health = warrior.health	
  	end

	private
	
	def taking_damage?(warrior)
		warrior.health < @health
	end
end

