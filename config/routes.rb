Rails.application.routes.draw do
  resources :wallet_histories
  resources :incomes
  resources :categries
  resources :outlays
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end