Rails.application.routes.draw do
  get 'friendships/create'
  get 'friendships/update'
  get 'friendships/destroy'
  resources :friendships, only: [:create, :update, :destroy]
  resources :social, only: :index
  devise_for :users
  root 'home#index'
    resources :posts
    resources :direct_messages
    resources :chatrooms do
      resources :messages
      resource :chatroom_users
      resources :elements
    end
end
