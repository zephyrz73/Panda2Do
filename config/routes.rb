Rails.application.routes.draw do
  root 'site#index'
  # root "tags#index"
  # resources :tags do
  #   resources :posts do
  #     resources :comments
  #   end
  # end

  # get '/posts', to:'posts#show'
  # get "/posts/:id", to: "posts#post"

  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get '/logout', to: 'sessions#delete'

  # resources :users

  # resources :posts do
  #   resources :comments
  # end
end
