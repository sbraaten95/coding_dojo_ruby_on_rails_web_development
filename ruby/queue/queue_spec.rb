require_relative 'queue'

RSpec.describe Queue do
	before do
		@data_store_queue = Queue.new
		@back_queue = Queue.new
		@dequeue_queue = Queue.new
	end
	it 'has the attribute data_store, an array of all the values in the queue' do
		expect(@data_store_queue.data_store).to be_an(Array)
	end
	it 'has the attribute back, the last value in the queue set to 0 by default' do
		expect(@back_queue.get_back).to be(0)
		expect(@back_queue.enqueue(1).get_back).to be(1)
	end
	it 'has the method dequeue, which removes an element from the queue' do
		expect(@dequeue_queue.enqueue(1).enqueue(2).enqueue(3).dequeue.data_store).not_to include(1)
		expect(@data_store_queue.dequeue.data_store).to be_empty
	end
	it 'has max and min methods, which return the max and min values' do
		expect(@dequeue_queue.enqueue(1).enqueue(2).enqueue(3).max).to eq(3)
		expect(@dequeue_queue.min).to eq(1)
	end
end