Rails.application.routes.draw do
  devise_for :user, controllers: {
    registrations: 'users/registrations'
  }
  resources :purchase_rentings
  resources :books
  resources :users

  root 'purchase_rentings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
