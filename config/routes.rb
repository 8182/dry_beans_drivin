Rails.application.routes.draw do
  resources :services, only: [:index, :show, :create, :update, :destroy]
  resources :routes, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end