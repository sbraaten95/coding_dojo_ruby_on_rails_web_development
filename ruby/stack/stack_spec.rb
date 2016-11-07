require_relative 'stack'

RSpec.describe Stack do
	before do
		@stack_data_store = Stack.new
		@stack_pop = Stack.new
		@stack_back = Stack.new
	end
	it 'has an attribute, data_store, which displays an array of values in the stack' do
		expect(@stack_data_store.add_value(1).data_store).to include(1)
		expect(@stack_data_store.populate10.data_store.length).to be(10)
	end
	it 'has a method, back, that displays the last value in the stack that is set to 0 as default' do
		expect(@stack_back.get_back).to be(0)
		expect(@stack_back.add_value(1).get_back).to be(1)
	end
	it 'has a method, take_off, that takes the accessible element off the stack' do
		expect(@stack_pop.add_value(1).add_value(2).take_off.data_store).not_to include(2)
	end
end