#1

def one
	arr = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
	puts arr.reduce(:+)
	return arr.select { |i| i > 10 }
end

def two
	arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
	arr.shuffle!
	puts arr
	return arr.select { |i| i.length > 5 }
end

def three
	arr = ('a'..'z').each.to_a
	arr.shuffle!
	puts arr
	puts arr[-1]
	if %w(a e i o u).include?(arr[0])
		puts "Message"
	end
end

def four
	arr = Array.new(10) { rand(55..100) }
	puts arr
end

def five
	arr = (Array.new(10) { rand(55..100) }).sort
	puts arr, arr.min, arr.max
end

def six
	string = (1..5).map { (65+rand(26)).chr }.join
	puts string
end

def seven
	arr = Array.new(10) { (1..5).map { (65+rand(26)).chr }.join }
	puts arr
end

seven