Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  get 'my_bookings/show'

  get 'received_bookings/index'

  get 'received_bookings/show'

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

