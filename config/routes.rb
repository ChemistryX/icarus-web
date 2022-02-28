Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'dashboard/profile' }
  namespace :dashboard do
	root "base#index"
	resources :profile
	resources :users
	resources :plans
	resources :faqs
  end
  resources :faqs, only: [:index, :show]
  root "home#index"
end
