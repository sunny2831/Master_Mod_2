Rails.application.routes.draw do
  resources :posts
  resources :comments
  resources :users
  resources :sessions

  post '/logout', to: 'users#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
