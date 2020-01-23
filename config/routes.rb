Rails.application.routes.draw do
  resources :user_collages
  resources :canva_images, only: [:index, :create, :update]
  resources :images, only: [:index]
  resources :canvas, only: [:show, :create, :destroy]
  resources :users, only: [:index, :create]
  post "login", to: "authentication#login"
end
