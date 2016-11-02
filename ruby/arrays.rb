arr0 = [1, 2, 3, 4, 5]

=begin
	
array #at

parameter values work as standard array index
	
=end
arr0.at(0)
arr0[0] #same thing

arr0.at(1)
arr0.at(5) #this puts nothing, being outside index range

arr0.at(-1) #puts last element in array.
arr0[-1] #works for standrd indexing too

=begin
	
array #fetch

parameter values work as standard array index
	
=end
arr0.fetch(0)
arr0.fetch(8, 'Default') # allows for default value if index is out of range
arr0.fetch(-8) {|i| "#{(i.positive? ? i - arr0.length + 1: (i + arr0.length - 1).abs)} values off from last index!"} # allows for block statement to be executed if index is out of array

=begin
	
array #delete

paramter values work as values within array
	
=end
arr0.delete(4) #deletes the value 4 from the array
arr0 = [1, 2, 3, 4, 5, 4]
arr0.delete(4) #deletes both values of 4 from the array

arr0 = [1, 2, 3, 4, 5]

=begin
	
array #reverse
	
=end
arr0.reverse #reverses the array but does not apply the change to the original array
arr0.reverse! #reverses array and applies change to original array

arr0 = [1, 2, 3, 4, 5]

=begin
	
array #length
	
=end
arr0.length #the length of the array

=begin
	
array #sort
	
=end
arr0 = [5, 4, 3, 2, 1]
arr0.sort #puts values in array in ascending order, does not apply change to original array
arr0.sort {|x, y| y <=> x} #allows for the sort to be determined by a block
arr0.sort! #puts values in array in asceinding order, applies change to original array
#arr0 is now [1, 2, 3, 4, 5]

=begin
	
array #slice
	
=end
arr0.slice(1) #returns element in array at first index
arr0.slice(1, 3) #returns a new array with the first element as the element in the original array at index of the first paramter, and last element as element in arr0 at i of second parameter

=begin
	
array #shuffle
	
=end
arr0.shuffle #shuffles elements in arr0, does not apply change to arr0
arr0.shuffle! #shuffles elements in arr0, applies change to arr0

=begin
	
array #join

paramter is whatever is put between elements in array
	
=end
arr0.join #joins elements in array together as string
arr0.join('+') #joins elements in array together as string, each element separated by +

=begin
	
array #insert

first paramter is index, the rest are whatever objects to insert at the index
	
=end
arr0.insert(0, 'A') #inserts 'A' into first element of array, pushes everything already there forwards one
arr0.insert(4, 'Scott', 'David', 'Mikel') #inserts multiple values into fourth element in array
arr0 = [1, 2, 3, 4, 5]

=begin
	
array #values_at

paramters are whichever indexes want to be used to access the array for its elements
	
=end
arr0.values_at(0) #returns first element in array
arr0.values_at(0, -1) #returns first and last elements in array
arr0.values_at(0..-1) #returns all values in array