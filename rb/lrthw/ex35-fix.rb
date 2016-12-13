puts "This room is full of gold.  How much do you take?"

print "> "
choice = $stdin.gets.chomp

# this line has a bug, so fix it
if choice =~ /\d/
  how_much = choice.to_i
  puts how_much
else
  puts "Man, learn to type a number."
end
