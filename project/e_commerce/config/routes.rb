Rails.application.routes.draw do
	root 'controls#index'
	resources :users
	resources :products

	get '/login', to: 'controls#login', as: 'log_in'
end
