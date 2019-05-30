Rails.application.routes.draw do
  get 'static/about'
  resources :recommendations
  devise_for :users
  resources :notes
  root 'categories#index'
  resources :varietals
  resources :categories
  get 'search', to: "varietals#index"
  get 'recommendations', to: 'recommendations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
