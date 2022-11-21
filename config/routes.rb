Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/edit'
  get 'bookings/destroy'
  # get 'animals/index'
  # get 'animals/show'
  # get 'animals/new'
  # get 'animals/edit'
  # get 'animals/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :bookings, only: %i[index new create edit update]
  end
  resources :bookings, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
