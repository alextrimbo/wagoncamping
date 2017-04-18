Rails.application.routes.draw do
  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/update'

  get 'bookings/edit'

  get 'bookings/destroy'

  get 'bookings/show'

  get 'bookings/index'

 resources :campings

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/edit'

  get 'users/destroy'

  devise_for :users,
   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
