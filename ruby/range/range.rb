puts ('a'..'z').member? ('e') #returns true
puts ('a'..'z').member? (2) #returns false
puts (1..10).member? (2) #returns true

=begin
	
As displayed above, ranges are not limited to numbers in their functionality.
	
=end

puts ('a'..'z').include? ('e') #returns true
puts ('a'..'z').include? (2) #returns false
puts (1..10).include? (2) #returns true

=begin
	
.member? and .include? are aliases of each other
	
=end

puts ('a'...'z').last
puts (1..10).last

puts ((1..10).map {|x| -(x-2)**2}).max #is zero because this function's max is always 0
puts ((1..10).map {|x| -(x-2)**2}).min #is -64 because the value at 10 will be 8