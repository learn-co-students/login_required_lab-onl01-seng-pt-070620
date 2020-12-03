Rails.application.routes.draw do
    # root 'sessions/login'
    # resources :secrets, only: [:show]
    get '/secrets' => 'secrets#show'
    get '/login' => 'sessions#new', as: :login
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
end
