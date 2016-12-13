Rails.application.routes.draw do
  get '/dojos' => 'dojos#index'

  get '/dojos/hello' => 'dojos#world'

  get '/dojos/ninjas' => 'dojos#ninjas'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
