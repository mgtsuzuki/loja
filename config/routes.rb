Rails.application.routes.draw do
  resources :items
  resources :pedidos
  resources :vendedors
  resources :clientes
  resources :produtos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
