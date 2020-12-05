Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "sessions#new"


  post '/destroy', to: 'sessions#destroy', as: 'logout'
  get '/secrets', to: 'secrets#show'
  get '/welcome', to: 'sessions#welcome', as: 'welcome'

  resources :sessions, only: [:create]
end
