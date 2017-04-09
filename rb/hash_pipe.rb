my_hash = {"first name" => "George", "last name" => "Perez", "age" => 26}
my_other_hash = {"first name" => "gp", "last name" => "2015", "age" => 26}

puts my_hash

merged_hash = my_hash.merge(my_other_hash) {|key, oldval, newval| }

puts merged_hash