Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

	get "users/new"

  get"/help", to: "static_pages#help"

  get"about", to: "static_pages#about"

  get"contact", to: "static_pages#contact"

  root "static_pages#home"

  get 'signup', to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :posts do
    resources :comments,            only: [:create, :edit, :update, :destroy]
  end
end
