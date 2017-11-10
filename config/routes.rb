Rails.application.routes.draw do
  get 'customers/missing_email', to: 'customers#missing_email', as: 'no_email'

  get 'customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetical'

  root 'customers#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
