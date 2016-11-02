require_relative 'planet'
RSpec.describe Planet do
	it 'has a name, description, and population' do
		planet = Planet.new('Mars', 'Red', 0)
		expect(planet.name).to eq('Mars')
		expect(planet.desc).to eq('Red')
		expect(planet.pop).to be(0)
	end	
end