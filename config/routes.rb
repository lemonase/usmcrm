Rails.application.routes.draw do
  resources :locations
  resources :contacts
  resources :equipment
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
