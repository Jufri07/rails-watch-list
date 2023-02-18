Rails.application.routes.draw do
  get '/lists/new', to: 'lists#new'
  get '/lists/index', to: 'lists#index'
  get '/lists/show', to: 'lists#show'
  get '/lists/create', to: 'lists#create'


  resources :lists do
    resources :bookmarks
  end

  get 'bookmarks/new', to: 'bookmarks#new'
  get 'bookmarks/show', to: 'bookmarks#show'
  delete '/bookmarks/:id', to: 'bookmarks#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
