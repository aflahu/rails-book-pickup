Rails.application.routes.draw do
  # resources :pickups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope :api do
    scope :v1 do
      resources :pickups, only: [:index]
      resources :books, only: [:index]
    end
  end
end
