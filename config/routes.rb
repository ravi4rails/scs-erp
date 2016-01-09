Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get 'home/index'
  resources :users

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
  end
end
