Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    collection do
      get :top
    end
    # get "/chef", to: "restaurants#chef"

    member do
      get :chef
    end

    # /restaurants/:id/reviews/new
    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [ :destroy ]

  # /restaurants/:restaurant_id/reviews/:review_id/banana/new


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
