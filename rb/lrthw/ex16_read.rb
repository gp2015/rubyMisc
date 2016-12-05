filename = ARGV.first

target = open(filename, 'r')
puts target.read
target.close
