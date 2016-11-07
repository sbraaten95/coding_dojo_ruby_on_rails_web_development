Rails.application.routes.draw do
	root 'texts#say'
	get '/hello' => 'texts#simple'
	get '/say/hello' => 'texts#description'
	get '/say/hello/joe' => 'texts#oddity'
	get '/say/hello/michael' => 'texts#false'
	get '/times' => 'texts#count'
	get '/times/restart' => 'texts#restart'
end
