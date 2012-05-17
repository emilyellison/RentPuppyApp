RentPuppyApp::Application.routes.draw do
  
  root :to => 'static_pages#home', :as => :home

  get 'sessions/new' => 'sessions#new', :as => :new_session
  post 'sessions' => 'sessions#create', :as => :sessions
  get 'session' => 'sessions#destroy', :as => :session
  
  resources :users, :only => [ :index, :new, :create, :show ]
  resources :puppies, :only => [ :index, :show ]
  resources :walks, :only => [ :show ]
  resources :biddings, :only => [ :index, :new, :create ]

end
