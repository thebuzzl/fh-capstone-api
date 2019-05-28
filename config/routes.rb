Rails.application.routes.draw do
  resources :wares
  resources :products
  resources :markets
  resources :vendors
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
