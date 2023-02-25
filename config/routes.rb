Rails.application.routes.draw do
  resources :teams
  resources :players
  get '/hello' => 'pages#hello'
  root to: 'pages#home'
end
