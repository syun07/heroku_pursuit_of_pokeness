Rails.application.routes.draw do
  resources :poke_users
  resources :users
    post '/login', to: 'auth#create'
  resources :pokemons
end
