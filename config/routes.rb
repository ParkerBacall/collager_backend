Rails.application.routes.draw do
  resources :canva_images, only: [:create]
  resources :images, only: [:index]
  resources :canvas, only: [:create]
  resources :users, only: [:index, :create]
  post "login", to: "authentication#login"
end
