Rails.application.routes.draw do
  get '/ping' => 'main#ping'
  root to: 'response#index'
end
