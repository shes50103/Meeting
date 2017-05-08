Rails.application.routes.draw do
  get 'friendships/create'

  get 'friendships/update'

  get 'friendships/destroy'
  resources :friendships, only: [:create, :update, :destroy]
  devise_for :users
	root 'home#index'
    resources :posts do
    end
end
