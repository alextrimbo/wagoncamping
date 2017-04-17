Rails.application.routes.draw do
  get 'campings/index'

  get 'campings/show'

  get 'campings/new'

  get 'campings/create'

  get 'campings/update'

  get 'campings/edit'

  get 'campings/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/edit'

  get 'users/destroy'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
