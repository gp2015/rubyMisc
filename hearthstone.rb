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

class Card

end

class Minion < Card
	def initialize(card, attack, health)
		@card = card
		@attack = attack
		@health = health
	end
	
	def get_stat(stat)
		stat.downcase!
		case stat
			when "attack"
				return @attack
			when "health"
				return @health
			else
				return "Invalid minion stat"
		end
	end	
	
end

class Spell < Card

end

class Hero
	#@@
	
	def initialize(hero_class=self.class.name.downcase!)
		@damage_taken = 0
		@damage_dealt = 0
		@hp = 30 - @damage_taken
		@armor = 0
		@weapon = "none"
		@attack = 0 # factor in weapon damage
		@hand = {} # hand.draw(number) method?
		@board = {0 => nil, 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil}
		
		hero_powers = {"druid" => {"shapeshift" => "+1 Attack this turn, +1 Armor"},
						"hunter" => {"steady shot" => "Deal 2 damage to the enemy hero"},
						"mage" => {"fireblast" => "Deal 1 damage"},
						"paladin" => {"reinforce" => "Summon a 1/1 Silver Hand Recruit"},
						"priest" => {"lesser heal" => "Restore 2 Health"},
						"rogue" => {"dagger mastery" => "Equip a 1/2 Dagger"},
						"shaman" => {"totemic call" => "Summon a random Totem"},
						"warlock" => {"life tap" => "Draw a card and take 2 damage"},
						"warrior" => {"armor up!" => "Gain 2 Armor"}}
			
		@hero_power = hero_powers[hero_class]
	
=begin			
		case hero_class.downcase!
			when "druid"
				@hero_power = hero_powers["druid"]
			when "hunter"
				@hero_power = hero_powers["hunter"]
			when "mage"
				@hero_power = hero_powers["mage"]
			when "paladin"
				@hero_power = hero_powers["paladin"]
			when "priest"
				@hero_power = hero_powers["priest"]
			when "rogue"
				@hero_power = hero_powers["rogue"]
			when "shaman"
				@hero_power = hero_powers["shaman"]	
			when "warlock"
				@hero_power = hero_powers["warlock"]
			when "warrior"
				@hero_power = hero_powers["warrior"]
			else
				@hero_power = "Class not found!"
		end
=end
		
	end # end initialize method

	# Returning 'hero_power'
	def hero_power_getter
		return @hero_power
	end

	def get_stat(stat)
		stat.downcase!
		case stat
			when "hp"
				return @hp
			when "armor"
				return @armor
			when "damage_dealt"
				return @damage_dealt
			when "attack"
				return @attack
			when "hand"
				return @hand
			when "board"
				return @board
			else
				return "Invalid hero stat"
		end
	end
	
	def draw
		self.hand += 1
	end
	
end

class Druid < Hero

	def shapeshift
		@attack += 1
		@armor += 1
	end

end

class Hunter < Hero

	def steady_shot
		@damage_dealt += 2
	end

end

class Mage < Hero

	def fireblast
		@damage_dealt += 1
	end

end

class Paladin < Hero

	

	def reinforce
		
		# Add a new silver_hand_recruit hash item when summoning, to keep track of more than 1 recruit?
		
		@board.each do |key, value|
			summoned = false
			silver_hand_recruits = {0 => nil, 1 => nil, 2 => nil, 3 => nil, 4 => nil, 5 => nil, 6 => nil}
			recruit_slot = 0
			
			if summoned == false and @board[key] == nil
				silver_hand_recruits[recruit_slot] = Minion.new("silver hand recruit", 1, 1)
				@board[key] = silver_hand_recruits[recruit_slot]
				summoned = true
				puts "Silver Hand Recruit summoned"
				break
			else
				return "Board is full!"
			end
		end
	end

end

class Priest < Hero

	def shapeshift
		@attack += 1
		@armor += 1
	end

end

class Rogue < Hero

	def shapeshift
		@attack += 1
		@armor += 1
	end

end

class Shaman < Hero
	#@
	
	def shapeshift
		@attack += 1
		@armor += 1
	end	
	
end

class Warlock < Hero

	def shapeshift
		@attack += 1
		@armor += 1
	end

end

class Warrior < Hero

	def shapeshift
		@attack += 1
		@armor += 1
	end

end



class Deck
end

puts "druid created"
druid = Druid.new
druid.send(:initialize)
puts druid.hero_power_getter
druid.shapeshift
puts "Druid attack stat: #{druid.get_stat("attack")}"
puts "Druid armor stat: #{druid.get_stat("armor")}"

puts "*****************"

puts "hunter created"
hunter = Hunter.new
hunter.send(:initialize)
puts hunter.hero_power_getter
hunter.steady_shot
puts "Hunter damage_dealt stat: #{hunter.get_stat("damage_dealt")}"

puts "*****************"

puts "mage created"
mage = Mage.new
mage.send(:initialize)
puts mage.hero_power_getter
mage.fireblast
puts "Mage damage_dealt stat: #{mage.get_stat("damage_dealt")}"

puts "*****************"

puts "paladin created"
paladin = Paladin.new
paladin.send(:initialize)
puts paladin.hero_power_getter
paladin.reinforce
puts "Paladin board: #{paladin.get_stat("board")}"
paladin.reinforce # working on board adding 2nd minion, and appending recruit_num in paladin.reinforce method
puts "Paladin board: #{paladin.get_stat("board")}"

puts "*****************"

puts "priest created"
priest = Priest.new
priest.send(:initialize)
puts priest.hero_power_getter

puts "*****************"

puts "rogue created"
rogue = Rogue.new
rogue.send(:initialize)
puts rogue.hero_power_getter

puts "*****************"

puts "shaman created"
shaman = Shaman.new
shaman.send(:initialize)
puts shaman.hero_power_getter

puts "*****************"

puts "warlock created"
warlock = Warlock.new
warlock.send(:initialize)
puts warlock.hero_power_getter

puts "*****************"

puts "warrior created"
warrior = Warrior.new
warrior.send(:initialize)
puts warrior.hero_power_getter
