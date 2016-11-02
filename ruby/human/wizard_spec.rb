require_relative 'wizard'

RSpec.describe Wizard do
	it 'has a default health of 50 and intelligence of 25' do
		wizard = Wizard.new
		expect(wizard.health).to eq(50)
		expect(wizard.intelligence).to eq(25)
	end
	it 'has a heal method that restores 10 health' do
		wizard = Wizard.new
		wizard.heal
		expect(wizard.health).to eq(60)
	end	
	it 'has a Human ancestor' do
		wizard = Wizard.new
		expect(wizard.class.ancestors).to include(Human)
	end
	it 'has a fireball method that attacks another human, reducing its health by 20' do
		wizard0 = Wizard.new
		wizard1 = Wizard.new
		wizard0.fireball(wizard1)
		expect(wizard1.health).to be(30)
	end
end