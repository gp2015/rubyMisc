class String
  def shuffle
    self.split("").shuffle.join
  end
end

test = "hello"
puts test.shuffle