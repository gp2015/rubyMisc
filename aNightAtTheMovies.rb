# Codecademy Ruby A Night at the Movies

movies = {"blade runner" => 4}
puts "Add, update, display or delete?"
puts choice = gets.chomp

case choice
when "add"
  puts "Add what movie title?"
  puts title = gets.chomp
  puts "What would you rate this title?"
  puts rating = gets.chomp
  title.downcase!
  
  if movies[title].nil? == true
    puts "Title and rating added!"
    movies[title.to_sym] = rating.to_i
  else
    puts "Title already exists!"
  end
  
when "update"
  puts "What title do you want to update?"
  puts title = gets.chomp
  title.downcase!
  if movies[title].nil? == true
    puts "Title does not exist!"
  else
    puts "What is the new rating?"
    puts rating = gets.chomp
    puts "Title rating updated!"
    movies[title] = rating
  end
  
when "display"
  
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
  
when "delete"
  
  puts "Enter a title to delete"
  title = gets.chomp
  title.downcase!
  
  if movies[title].nil? == false
    puts "Title deleted"
    movies.delete(title)
  else
    puts "Title does not exist!"
  end
  
else
  puts "Error!"
end
