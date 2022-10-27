Rails.application.routes.draw do
  root "posts#index"

  # get '/posts', to:'posts#show'
  # get "/posts/:id", to: "posts#post"

  resources :posts do
    resources :comments
  end
end
