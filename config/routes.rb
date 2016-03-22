Rails.application.routes.draw do
  get '/ping' => 'main#ping'
  resources :users, defaults: {format: :json} 
  resources :sessions, defaults: {format: :json}
  resources :responses, constraints: {format: :json}
  resources :api_keys, only: :create  
end
