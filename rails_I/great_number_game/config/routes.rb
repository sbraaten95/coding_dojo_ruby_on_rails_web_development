Rails.application.routes.draw do
	post '/guess' => 'numbers#guess'
	root 'numbers#index'
end
