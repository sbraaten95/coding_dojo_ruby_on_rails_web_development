Rails.application.routes.draw do
	get '/rpg/farm' => 'rpg#farm'
	get '/rpg/cave' => 'rpg#cave'
	get '/rpg/house' => 'rpg#house'
	get '/rpg/casino' => 'rpg#casino'
	root 'rpg#index'
end
