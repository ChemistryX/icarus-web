Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'dashboard/profile' }
  namespace :dashboard do
	root "base#index"
	resources :profile
	resources :users
	resources :plans
	resources :faqs
  end
  get 'faqs', to: 'faqs#index'
  root "home#index"
end
