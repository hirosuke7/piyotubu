Rails.application.routes.draw do
  devise_for :users
  resources :hiyokos
  root 'hiyokos#index'
  resources :comments, only: [:create, :destroy]
end
