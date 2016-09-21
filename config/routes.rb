Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :climbs
  resources :sessions
  resources :profiles
  resources :friends

  root to: 'users#index'
end
