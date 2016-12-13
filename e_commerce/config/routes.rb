Rails.application.routes.draw do
	root 'controls#index'
	resources :users
	resources :products

	get '/login', to: 'controls#login', as: 'logging_in'
	post '/login', to: 'controls#confirm_login', as: 'confirm_logging_in'
	delete '/logout', to: 'controls#logout', as: 'logging_out'

	get '/addtocart', to: 'controls#add_to_cart', as: 'add_to_cart'
	get '/checkcart', to: 'controls#go_to_cart', as: 'check_cart'
	get '/checkout', to: 'controls#check_out_cart', as: 'check_out'

	get '/inventory', to: 'controls#show_inventory', as: 'inventory'

	patch '/changepic', to: 'products#change_picture', as: 'change_picture'

	post '/minpricefilter', to: 'controls#min_price_filter', as: 'min_price_filter'
	post '/maxpricefilter', to: 'controls#max_price_filter', as: 'max_price_filter'
end
