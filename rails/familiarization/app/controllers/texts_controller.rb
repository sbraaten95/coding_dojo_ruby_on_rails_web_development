class TextsController < ApplicationController
	def say
		render text: "What do you want me to say???"
	end
	def simple
		render text: "Hello CodingDojo!"
	end
	def description
		render text: "Saying Hello!"
	end
	def oddity
		render text: "Saying Hello Joe!"
	end
	def false
		redirect_to '/say/hello/joe'
	end
	def count
		if session[:count]
			session[:count] += 1
		else
			session[:count] = 0
		end
		render text: "You visited this url #{session[:count]} times."
	end
	def restart
		reset_session
		render text: "Destroyed the session!"
	end
end
