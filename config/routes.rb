Rails.application.routes.draw do
  resources :status_updates
  resources :profiles
  devise_for :users
  # get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
