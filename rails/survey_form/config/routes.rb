Rails.application.routes.draw do
	post '/result' => 'users#results'
	root 'users#index'
end
