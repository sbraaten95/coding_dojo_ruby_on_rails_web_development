class Planet
	attr_accessor :name, :desc, :pop
	def initialize(name, desc, pop)
		@name = name
		@desc = desc
		@pop = pop
		self
	end
end