Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'photos#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :galleries
  resources :photos

  resources :users do
    resources :galleries
  end

  # when posting to this link, check controller photos for the add function

  post "/add_picture", to: "photos#add"


end
