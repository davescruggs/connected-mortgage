Rails.application.routes.draw do
  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  post '/mortgage/calculate',    to: 'mortgage#calculate'
  get '/mortgage',    to: 'mortgage#index'
  get '/canvas/index'
  get '/canvas/salesforce', as :salesforce
  post '/canvas/auth' => "canvas#auth"
end
