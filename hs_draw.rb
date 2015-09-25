eu_sham = []
eu_sham << 'rockbiter weapon'
eu_sham << 'rockbiter weapon'
eu_sham << 'acidic swamp ooze'
eu_sham << 'acidic swamp ooze'

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

puts eu_sham

class deck
	#@@
	def hero_power
	end
end

class sham #instance of deck
	#@
	def hero_power #overwrite parent hero_power
	end
end
