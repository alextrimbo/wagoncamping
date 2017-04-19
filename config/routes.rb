Rails.application.routes.draw do
 # resources :bookings
 # resources :campings
 # resources :users
  root to: 'pages#home'

  devise_for :users,
   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

 resources :my_campings

 resources :campings do
   resources :bookings, only: [ :show, :create, :index, :new ]
 end

 resources :my_bookings, only: [ :show, :index, :destroy ]

 resources :received_bookings, only: [ :show, :index ] do
   member do
     patch :accept
     patch :decline
   end
 end
end

