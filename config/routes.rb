Rails.application.routes.draw do

  resources :memberships, only: [:create, :index, :destroy] 
  resources :clients, only: [:index, :show, :destroy, :update]
  resources :gyms, only: [:show, :destroy, :index, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
