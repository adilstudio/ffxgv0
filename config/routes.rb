Rails.application.routes.draw do
  get '/hello' => 'pages#hello'
  root to: 'pages#home'
end
