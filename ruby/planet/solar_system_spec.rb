require_relative 'solar_system'
require_relative 'planet'

RSpec.describe SolarSystem do
	it 'has a name that is provided' do
		expect(SolarSystem.new('Milky Way').name).to eq('Milky Way')
	end
	it 'names the solar system Andromeda if a name is not provided' do
		expect(SolarSystem.new.name).to eq('Andromeda')
	end
	it 'has a list containing the planets within it' do
		mars = Planet.new('Mars', 'Red', 0)
		expect(SolarSystem.new.add_planet(mars).get_planets).to include(mars)
	end
	it 'has a counter variable for how many planets are within it' do
		expect(SolarSystem.new.get_number_of_planets).to eq(1) #Because in the previous test a planet was added to the class.
	end
	it 'has a method that can add planets, and it checks if what is being added is indeed a planet' do
		expect(SolarSystem.new.add_planet('a').get_planets).not_to include('a')
	end
	it 'has a method that destroys all the planets' do
		expect(SolarSystem.new.super_nova.get_planets).to be_empty
	end
end