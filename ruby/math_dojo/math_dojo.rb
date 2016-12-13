class MathDojo
	attr_accessor :sum
	def initialize
		@sum = 0
		self
	end
	def add(*input)
		if input[0].is_a?(Array)
			input.each {|i| i.each {|j| @sum += j}}
		else
			@sum += input.reduce(:+)
		end
		self
	end
	def subtract(*input)
		if input[0].is_a?(Array)
			input.each {|i| i.each {|j| @sum -= j}}
		else
			@sum -= input.reduce(:+)
		end
		self
	end
	def result
		@sum
	end
end

puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2, 3], [1.1, 2.3]).result