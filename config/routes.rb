Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sets do
    resources :climbs
  end

  resources :profiles do
    resources :sets
  end

  resources :friendships

  root :to => 'profiles#index'

end
