Rails.application.routes.draw do
  resources :products do
    resources :reviews
  end

  namespace :api do
    resources :products, only: :index
    resources :reviews, only: :create
  end
end
