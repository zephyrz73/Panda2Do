Rails.application.routes.draw do
  root 'site#index'
  namespace :api do
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    get '/logout', to: 'sessions#delete'
    resources :users
  end
  get '*path', to: 'site#index'
end
