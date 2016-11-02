require_relative 'human'
class Samurai < Human
	attr_accessor :health
	@@samurais = 0
	def initialize
		super
		@health = 200
		@@samurais += 1
	end
	def death_blow(human)
		if human.class.ancestors.include?(Human)
			human.health = 0
			puts human.health
		end
	end
	def meditate(human)
		@health = 200
	end
	def how_many
		puts "There are #{@@samurais} samurais!"
	end
end

a = Samurai.new
b = Samurai.new

a.death_blow(b)