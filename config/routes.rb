Rails.application.routes.draw do
  root to: 'posts#index'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy'

  resources :posts do
<<<<<<< HEAD
    resources :comments, module: :post
    resource :like, only: %i[create destroy], module: :posts
=======
    resources :comments, module: :posts
>>>>>>> origin/develop
  end
end
