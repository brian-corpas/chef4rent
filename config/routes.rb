Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chefs do
    resources :bookings, only: [:create, :update]
  end

  get "profile", to: "pages#profile", as: "profile"
  get "chef_profile", to: "pages#chef_profile", as: "chef_profile"
end
