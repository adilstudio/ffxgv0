Rails.application.routes.draw do
  resources :fixtures
  resources :countries
  resources :leagues
  resources :teams
  resources :players
  get '/hello' => 'pages#hello'
  root to: 'pages#home'
end
