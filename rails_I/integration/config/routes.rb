Rails.application.routes.draw do
	resources :users
	get '/users/total/' => 'users#total'
	root 'users#index'
end
