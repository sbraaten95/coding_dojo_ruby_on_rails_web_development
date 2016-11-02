class AppleTree
	attr_accessor :height, :age, :apples
	def initialize(height, age)
		@height = height
		@age = age
		@apples = []
	end
	def get_num_of_apples
		@apples.length
	end
	def grow_apple
		if @age > 3 and @age < 10
			@apples.push('Apple')
		end
		self
	end
	def year_gone_by
		@age += 1
		@height += 10
		self
	end
	def pick_apples
		picked_apples = @apples
		@apples = []
		self
	end
end