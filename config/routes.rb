Rails.application.routes.draw do
  root 'application#hello'

  get 'login', to: 'sessions#new'
 
  post 'login', to: 'sessions#create'
 
  post 'logout', to: 'sessions#destroy'
 
  get 'secrets/show', to: 'secrets#show'
end
