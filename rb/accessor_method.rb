class Person

  def age=(value)
    @age = value
  end
end

p = Person.new
puts p.age=10
