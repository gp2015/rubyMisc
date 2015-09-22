# Codecademy Ruby A Night at the Movies 7/10

movies = {"blade runner" => 4, "star wars" => 4}
puts "Add, update, display or delete?"
puts choice = gets.chomp

case choice
when "add"
  puts "Add what movie title?"
  puts title = gets.chomp
  title.downcase!
  puts "What would you rate this title?"
  puts rating = gets.chomp
  
  if movies.has_key?(title) == false
    movies[title.to_sym] = rating.to_i
    puts "Title and rating added!"
  else
    puts "Title already exists!"
  end
  
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end
