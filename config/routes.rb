Rails.application.routes.draw do
  resources :groups do
    member do
      post :join
    end
    member do
      post :leave
    end
  end
  resources :status_updates
  resources :profiles
  devise_for :users
  # get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
