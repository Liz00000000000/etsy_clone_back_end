Rails.application.routes.draw do
  resources :histories
  resources :stories
  resources :favorites
  resources :replies
  resources :messages
  resources :reviews
  resources :purchases
  resources :items
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
