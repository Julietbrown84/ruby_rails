Rails.application.routes.draw do

  resources :articles
  resources :animals, except: :destroy

  # resources :animals, only: [:index, :show]
  # resources :animals, only: [:index, :show]
  get
  get '/articles/:id' => 'articles#show'
  get  '/articles/new' => 'articles#new'
  get  '/articles/id/edit' => 'articles#new'
  post '/articles' =>  'articles#create'
  root to: 'animals#index'
  get '/animals/:id' => 'animals#show'
  get '/animals/new' => 'animals#new'
  get '/animals/:id/edit' => 'animals#edit'

  get 'welcome/index'
end
