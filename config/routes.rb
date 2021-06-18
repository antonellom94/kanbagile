Rails.application.routes.draw do
  get 'home/index'

  resources :cards

  root 'home#index'
end
