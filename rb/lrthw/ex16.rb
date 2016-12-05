filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
# Unnecessary to truncate w/ open(filename, 'w')?
# target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# Trying more eloquent solution to the following:
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

# Eloquent attempt 1
# Easiest to read!
target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

# Eloquent attempt 2
# VISUALLY NOISY, overly complicated and hard to read
# nl = "\n"
# target.write(("%s#{nl}%s#{nl}%s#{nl}") % [line1, line2, line3])

# Eloquent attempt 3
# Hard to read
# nl = "\n"
# target.write("#{line1}#{nl}#{line2}#{nl}#{line3}")

puts "And finally, we close it."
target.close
