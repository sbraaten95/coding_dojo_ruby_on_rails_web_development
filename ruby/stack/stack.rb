class Stack
	attr_accessor :data_store
	def initialize
		@data_store = []
	end
	def populate10
		for i in @data_store.length...(@data_store.length + 9)
			@data_store[i] = rand()
		end
		self
	end
	def add_value(val)
		@data_store[@data_store.length] = val
		self
	end
	def get_back
		if @data_store.empty?
			return 0
		end
		(@data_store.length - 1).downto(0) { |i| return @data_store[i] if i == 0 }
	end
	def take_off
		@data_store = @data_store - [@data_store[@data_store.length - 1]]
		self
	end
end

print Stack.new.add_value(1).data_store