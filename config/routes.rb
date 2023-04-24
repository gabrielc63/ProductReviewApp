Rails.application.routes.draw do
  resources :products do
    resources :reviews
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # new_product_review_path(product)
end
