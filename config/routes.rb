Rails.application.routes.draw do
  get 'friendships/create'
  get 'friendships/update'
  get 'friendships/destroy'
  resources :friendships, only: [:create, :update, :destroy]
  resources :social, only: :index
  devise_for :users
	root 'home#index'
    resources :posts do
    end
    resources :chatrooms do
    resource :chatroom_users
    end
    resources :direct_messages

end
