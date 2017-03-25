Rails.application.routes.draw do
  
  root 'washes#index'
  get 'washes/new', to: 'washes#new', as: :new_washes
  post 'washes', to: 'washes#create'

end
