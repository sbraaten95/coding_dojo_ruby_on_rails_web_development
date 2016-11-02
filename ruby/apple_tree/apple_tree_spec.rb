require_relative 'apple_tree'

RSpec.describe AppleTree do
	before do
		@grandmaster = AppleTree.new(50, 100)
		@youngling = AppleTree.new(1, 3)
		@average = AppleTree.new(10, 7)
	end
	it 'has a height and an age' do
		expect(@grandmaster.height).to eq(50)
		expect(@grandmaster.age).to be(100)
	end
	it 'counts how many apples it has' do
		expect(@average.get_num_of_apples).to be(0)
		expect(@average.grow_apple.get_num_of_apples).to be(1)
	end
	it 'gets one year older, and therefore taller' do
		expect(@grandmaster.year_gone_by.age).to be(101)
		expect(@grandmaster.height).to be(60)
	end
	it 'cannot grow apples until it is at least 4 years old' do
		expect(@youngling.grow_apple.apples).to be_empty
	end
	it 'is stripped of all of its apples' do
		expect(@grandmaster.pick_apples.apples).to be_empty
	end
	it 'cannot grow apples if it is 10 years or older' do
		expect(@grandmaster.grow_apple.apples).to be_empty
	end
end