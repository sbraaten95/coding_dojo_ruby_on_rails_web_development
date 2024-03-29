Rails.application.routes.draw do
  get '/users/' => 'users#index'
  get '/users/new' => 'users#new'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  post '/users/' => 'users#create'
  post '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
