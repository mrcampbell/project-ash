Rails.application.routes.draw do
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
