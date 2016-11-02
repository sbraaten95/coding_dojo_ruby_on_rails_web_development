require_relative 'human'
class Ninja < Human
	attr_accessor :health
	def initialize
		super
		@stealth = 175
	end
	def steal(human)
		if human.class.ancestors.include?(Human)
			@health += 10
		end
	end
	def get_away
		@health -= 15
	end
end