Rails.application.routes.draw do

  resources :lists do
    resources :bookmarks
  end

  get 'bookmarks/new', to: 'bookmarks#new'
  get 'bookmarks/show', to: 'bookmarks#show'
  post '/lists/:list_id/bookmarks', to: 'bookmarks#create'
  delete '/bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
