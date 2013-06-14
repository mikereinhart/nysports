Nysports::Application.routes.draw do
  
 resources :users, :teams, :sites, :feeds
 root :to => 'home#index'

end
