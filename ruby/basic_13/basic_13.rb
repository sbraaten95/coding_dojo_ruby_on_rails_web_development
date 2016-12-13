#Print 1-255
(1..255).each { |i| puts i }

#Print odd numbers between 1-255
(1..255).each { |i| puts i if i.odd? }

#Print sum
(1..255).each { |i| puts "New number: #{i}, Sum: #{(1..i).reduce(:+)}"}

#Iterating through an array
[1,3,5,7,9,13].each { |i| puts i }

#Find max
puts [-4, -2, 0, -8].max

#Get average
puts [2, 10, 3].reduce(:+) / [2, 10, 3].length

#Array with odd numbers
puts (1..255).step(2).to_a

#Greater than y
puts ([1, 3, 5, 7].each.select { |i| i > 3 }).length

#Square the values
puts [1, 5, 10, -2].map { |i| i**2 }

#Eliminate negative numbers
puts ([1, 5, 10, -2].map { |i| i < 0 ? i - i : i }).to_a

#Max, min, avg
puts "Average: #{([1, 5, 10, -2].reduce(:+) / [1, 5, 10, -2].length)}, Max: #{[1, 5, 10, -2].max}, Min: #{[1, 5, 10, -2].min}"

#Shift values in array
arr = [1, 5, 10, 7, -2]; arr.shift; puts arr