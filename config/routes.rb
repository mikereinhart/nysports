Nysports::Application.routes.draw do
  
	resources :users, :teams, :sites, :feeds
	root :to => 'home#index'
	get 'sessions/new' => 'sessions#new'
	post 'sessions' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
end
