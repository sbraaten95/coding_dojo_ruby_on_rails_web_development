require_relative 'human'
class Wizard < Human
	attr_accessor :health, :intelligence
	def initialize
		super
		@health = 50
		@intelligence = 25
	end
	def heal
		@health += 10
	end
	def fireball(human)
		if human.class.ancestors.include?(Human)
			human.health -= 20
		end
	end
end