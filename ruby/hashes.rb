thehash = {:first => "First!", :second => "Second!"}

save = thehash.delete(:first)
puts save, thehash
thehash[:first] = save
puts thehash

thehash.delete(:first)
thehash.delete(:second)
puts thehash.empty?

thehash = {:first => "First!", :second => "Second!"}

puts thehash.has_key?(:first)
puts thehash.has_value?("Second!")