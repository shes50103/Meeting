Rails.application.routes.draw do
	root 'home#index'
    resources :posts do
    end
end
