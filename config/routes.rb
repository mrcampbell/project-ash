Rails.application.routes.draw do
  root to: 'trainers#index'

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'authorized', to: 'sessions#page_requires_login'
  get '/pokemon/box', to: 'pokemons#box'
  get '/pokemon/team', to: 'pokemons#team'
  get '/bag', to: 'items#bag'
  get '/store', to: 'store#index'
  post '/store/purchase', to: 'store#purchase'
  post '/store/sell', to: 'store#sell' # todo: better routing?


  resources :pokemons do 
    resources :pokemon_moves do
    end
  end

  # actions
  post '/actions/items/:item_id', to: 'actions#use_item'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
