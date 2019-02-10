Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'projects#index'
	get '/projects' => 'projects#index'
	get '/projects/:id' => 'projects#show', as: :project
	get '/thanks' => 'projects#thanks', as: :thanks
	resources :signups
	
	get '/photos/:id' => 'photos#show', as: :photo
	
	get '/services' => 'services#index'
	get '/services/:id' => 'services#show', as: :service
	
	post '/contact' => 'contact#create', as: :contact
end
