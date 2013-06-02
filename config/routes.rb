Boxify::Application.routes.draw do
  devise_for :users

  get "home/index"

  root :to => "home#index"

  resources :boxes do
    member do
      post 'purchase'
    end
  end
  resources :subscriptions
end
