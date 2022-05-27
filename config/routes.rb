Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'profile', to: 'pages#profile'
  resources :ducks, except: [:destroy] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
