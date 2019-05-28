Rails.application.routes.draw do
  resources :notes
  root 'categories#index'
  resources :varietals
  resources :categories
  get 'search', to: "varietals#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
