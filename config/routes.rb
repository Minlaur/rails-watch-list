Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'lists#index'
  # updated so that the root will go to the index

  resources :lists do
    resources :bookmarks, only: [ :new, :create, :destroy]
  end
end
