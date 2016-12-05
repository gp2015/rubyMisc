class Animal
	attr_accessor :name, :age, :legs
	def talk
		puts "Hi, I'm " + self.name + " the " + self.class.name + "!"
	end
end

class Dog < Animal
	def bark
		puts "Woof!"
	end
end

Spunky = Dog.new
Spunky.name = "Spunky"
Spunky.age = 1
Spunky.legs = 4
Spunky.talk
Spunky.bark
