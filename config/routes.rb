Rails.application.routes.draw do
  get 'samples/index'
  get '/health_check', to: 'health_checks#show'
  root to: "samples#index"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'user_sessions#new'
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destory'
end
