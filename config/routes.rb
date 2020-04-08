Rails.application.routes.draw do
  root to: 'sessions#welcome'

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :trainers do 
    resources :pokemons do 
      resources :pokemon_moves do
      end
    end
  end

  # actions
  post '/actions/items/:item_id', to: 'actions#use_item'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
