Boxify::Application.routes.draw do

	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # get "home/index"

  #match 'auth/:provider/callback', to: 'sessions#create'

  authenticated :user do
    root :to => "boxes#index"
  end

  root :to => "home#index"


  resources :boxes do
    member do
      post 'purchase'
    end
  end
  resources :subscriptions
end
