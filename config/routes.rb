Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :climbs
  resources :set
  resources :profiles
  resources :friendships

  # get "/session/user" => "profile#index"
  root :to => 'profiles#index'

end
