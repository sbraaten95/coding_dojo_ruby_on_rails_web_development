a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]

def print_names(arr)
	puts "You got #{arr.length} names in the 'names' array"
	arr.each { |i| puts "The name is '#{i[:first_name]} #{i[:last_name]}'"}
end

print_names(names)