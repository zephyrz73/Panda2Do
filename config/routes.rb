Rails.application.routes.draw do
  root "tags#index"
  resources :tags do
    resources :posts do
      resources :comments
    end
  end

  # get '/posts', to:'posts#show'
  # get "/posts/:id", to: "posts#post"

  get '/login', to: 'users#login_page'
  post '/login', to: 'users#login'
  get '/logout', to: 'users#delete'

  resources :posts do
    resources :comments
  end
end
