Rails.application.routes.draw do
  resources :messages
  resources :posts
  resources :comments
  resources :users
  # resources :sessions

  post '/logout', to: 'users#destroy'




get '/login', to: 'sessions#new', as: 'login'
post '/sessions', to: 'sessions#create', as: 'sessions'
# post '/logout', to: 'sessions#destroy', as: 'logout'

end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
