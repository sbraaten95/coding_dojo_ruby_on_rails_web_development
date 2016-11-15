Rails.application.routes.draw do
	resources :users
	delete '/sessions' => 'users#switch'
	get '/sessions/new' => 'users#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
