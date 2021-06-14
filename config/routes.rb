Rails.application.routes.draw do
  resources :weight_histries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'top#index'

  #/users/1
  #/users/2
  get '/users', to:"users#index", as:"users"
  get '/users/:id', to:'users#show', as:'user'
end
