Rails.application.routes.draw do
  get 'secrets/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get 'app/login', to: 'sessions#new'  
  post '/login', to: 'sessions#create' 
  get '/clear', to: 'sessions#destroy' 
  get '/homepage', to: 'sessions#homepage'
end
