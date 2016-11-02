class Human
	attr_accessor :health
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(human)
		if human.class == Human
			human.health -= 10
		end
	end
end