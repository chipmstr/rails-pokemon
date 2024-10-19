Rails.application.routes.draw do
  root to: "pokemons#index"

  resources :pokemons, only: [:index, :show] do  # added index
    resources :pokeballs, only: [:create]
    collection do
      get :random
    end
  end

  resources :trainers, only: [:index, :show, :new, :create]
  resources :pokeballs, only: [:destroy]

  get "up" => "rails/health#show", as: :rails_health_check
end
