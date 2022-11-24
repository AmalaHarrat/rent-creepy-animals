Rails.application.routes.draw do
  devise_for :users
  root to: "animals#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :animals, exept: [:index] do
    resources :bookings, only: %i[index new create]
  end
  resources :bookings, only: %i[destroy update edit]
  # Defines the root path route ("/")
  # root "articles#index"

  get "my_animals", to: "animals#my_animals"
  get "my_bookings", to: "bookings#my_bookings"
  # patch "animals", to: "animals#my_update"
end
