Rails.application.routes.draw do
  devise_for :users
  root to: "animals#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :animals, exept: [:index] do
    resources :bookings, only: %i[index new create edit update]
  end
  resources :bookings, only: :destroy
  # Defines the root path route ("/")
  # root "articles#index"
end
