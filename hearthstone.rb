# Creating hearthstone card drawing mechanic to show how real HS drawing is BULLSHIT! a la Penn & Teller

# Need array of cards in Deck

=begin

rockbiter weapon 2
acidic swamp ooze 2
bloodfen raptor 2
flametongue totem 2
murloc tidehunter 1
hex 2
razorfen hunter 2
shattered sun cleric 2
chillwind yeti 2
gnomish inventor 2
sen'jin shieldmasta 2
bloodlust 1
frostwolf warlod 2
boulderfist ogre 2
fire elemental 2
stormwind champion 2

=end

class Hero
	#@@
	
	# need hero stats
	# hp = 30, armor = 0, attack = 0, cards?, hero_class?
	
	# Setting 'hero_power' need to make hashes {power name: stats}
	def hero_power_setter(hero_class)
		case hero_class.downcase!
			when "druid"
				hero_power = "shapeshift"
			when "hunter"
				hero_power = "steady shot"
			when "mage"
				hero_power = "fireblast"
			when "paladin"
				hero_power = "reinforce"
			when "priest"
				hero_power = "lesser_heal"
			when "rogue"
				hero_power = "dagger mastery"
			when "shaman"
				hero_power = "totemic call"				
			when "warlock"
				hero_power = "life tap"
			when "warrior"
				hero_power = "armor up!"
			else
				hero_power = "Class not found!"
		end
		return hero_power
	end
	
	# Returning 'hero_power'
	def hero_power_getter
		hero_power = hero_power_setter(self.class.name)
		return hero_power
	end
	
end

class Druid < Hero
end

class Hunter < Hero
end

class Mage < Hero
end

class Paladin < Hero
end

class Priest < Hero
end

class Rogue < Hero
end

class Shaman < Hero
	#@
end

class Warlock < Hero
end

class Warrior < Hero
end

class Card

end

class Minion < Card
	attack = 0
	health = 0
end

class Spell < Card

end

class Deck
end

class Player
	hand = 0
	
	def draw
		self.hand += 1
	end
end

eu_shaman = Shaman.new
puts eu_shaman.hero_power_getter
hand = [] # hand.draw(number) method?
computer = Player.new
player = Player.new
