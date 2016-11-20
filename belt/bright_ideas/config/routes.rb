Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'guys#index'

  resources :guys
  post '/login' => 'guys#login'

  resources :ideas
  get '/bright_ideas' => 'ideas#index'
end
