Rails.application.routes.draw do
  # resources :reservations
  resources :vip_lounges
  resources :ballers 
  # get "/ballers", to: "ballers#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
