Rails.application.routes.draw do
  resources :products do
  	resources :comments
  end

  get '/all' => 'comments#all'

  root 'products#index'
end
