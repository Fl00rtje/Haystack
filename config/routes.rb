Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'

 get 'items/new', to: "items#new"
  post'items',to: "items#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items, only: [:index, :show, :update, :edit]
end
