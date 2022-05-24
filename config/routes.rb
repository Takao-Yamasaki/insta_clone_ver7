Rails.application.routes.draw do
  get 'samples/index'
  get '/health_check', to: 'health_checks#show'
  root to: "samples#index"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
end
