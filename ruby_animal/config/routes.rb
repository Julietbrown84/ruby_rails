Rails.application.routes.draw do


  resources :animals, except: :destroy

  # resources :animals, only: [:index, :show]
  # resources :animals, only: [:index, :show]

  root to: 'animals#index'
  get '/animals/:id' => 'animals#show'
  get '/animals/new' => 'animals#new'
  get '/animals/:id/edit' => 'animals#edit'
end
