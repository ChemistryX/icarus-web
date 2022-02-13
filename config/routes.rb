Rails.application.routes.draw do
  devise_for :users
  resources 'dashboard'
  root "home#index"
end
