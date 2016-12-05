class Book
  def initialize(title, pages)
    @title = title
    @pages = pages
  end
  
  def read
    puts @title
  end
  
  def desc
    puts "The book #{@title} has #{@pages} pages."
  end
  
  def title
    return @title
  end
  
  def pages
    return @pages
  end
  
end

goblet_of_fire = Book.new('Goblet of Fire', 10000)

print goblet_of_fire::read
print goblet_of_fire::desc
print goblet_of_fire.read
print goblet_of_fire.desc
puts goblet_of_fire::title
puts goblet_of_fire.title
puts goblet_of_fire::pages
puts goblet_of_fire.pages
