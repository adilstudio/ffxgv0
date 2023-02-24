Rails.application.routes.draw do
  resources :team_stats
  resources :team_events
  resources :fixtures
  resources :countries
  resources :leagues
  resources :teams
  resources :players
  get '/hello' => 'pages#hello'
  root to: 'pages#home'
end
