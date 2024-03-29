Rails.application.routes.draw do
	resources :users
	get '/sessions/new' => 'sessions#new'
	post '/sessions' => 'sessions#create'
	delete '/sessions' => 'sessions#destroy'

	resources :secrets
	get '/secrets' => 'secrets#index'
	post '/secrets' => 'secrets#create'

	post '/likes' => 'likes#create'
	delete '/likes/:id' => 'likes#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
