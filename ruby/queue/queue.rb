class Queue
	attr_accessor :data_store
	def initialize
		@data_store = []
		@back = 0
	end
	def get_back
		@back = @data_store.empty? ? 0 : @data_store[@data_store.length - 1]
		@back
	end
	def enqueue(val)
		@data_store[@data_store.length] = val
		self
	end
	def dequeue
		if not @data_store.empty?
			@data_store = @data_store - [@data_store[0]]
		end
		self
	end
	def max
		@data_store.max
	end
	def min
		@data_store.min
	end
end

Queue.new.enqueue(1).enqueue(2).enqueue(3).enqueue(4).enqueue(5).max