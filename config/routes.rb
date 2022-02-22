Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'dashboard/profile' }
  namespace :dashboard do
	root "base#index"
	resources :profile
	resources :users
  end
  root "home#index"
end
