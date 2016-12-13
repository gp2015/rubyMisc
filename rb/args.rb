def my_method(*args)
  puts "Each argument: "
  sub_method(*args)
  puts "All arguments: "
  sub_method(args)
end

def sub_method(*args)
  args.each do |arg|
    puts ("%s : %s") % [arg.inspect, arg.class.inspect]
  end
end

my_method('1', '2', '3', 'hello', 'world', 10)

