Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture', to: 'pokemon#capture'
  patch '/damage/:id', to: 'pokemon#damage', as: 'damage'
  get '/pokemons/new', to: 'pokemon#new'
  post '/pokemons', to: 'pokemon#create'
end
