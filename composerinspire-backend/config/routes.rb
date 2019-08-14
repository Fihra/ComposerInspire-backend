Rails.application.routes.draw do
  resources :jots
  resources :scales
  resources :songreferences
  resources :compositions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
