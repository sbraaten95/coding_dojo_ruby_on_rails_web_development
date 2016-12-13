Rails.application.routes.draw do
	get '/gen' => 'words#gen'
	root 'words#index'
end
