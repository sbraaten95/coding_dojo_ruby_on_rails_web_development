require_relative 'planet'

class SolarSystem
	attr_accessor :name, :planets
	@@planets = Array.new(0)
	def initialize(name = nil)
		if name
			@name = name
		else
			@name = 'Andromeda'
		end
		self
	end
	def add_planet(planet)
		if (planet.class.ancestors.include?(Planet))
			@@planets.push(planet)
		end
		self
	end
	def get_planets
		@@planets
	end
	def get_number_of_planets
		@@planets.length
	end
	def super_nova
		@@planets = []
		self
	end
end