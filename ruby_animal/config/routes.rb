Rails.application.routes.draw do

    resources :articles do
    resources :comments
   end
    resources :animals, except: :destroy
    resources :welcome


    # resources :animals, only: [:index, :show]
    # resources :animals, only: [:index, :show]
    delete '/articles/:id' => 'articles#destroy'
    get 'articles' => 'article#index'
    get '/articles/:id' => 'articles#show'
    get  '/articles/new' => 'articles#new'
    get  '/articles/id/edit' => 'articles#new'
    post '/articles' =>  'articles#create'

    root to: 'animals#index'
    get '/animals/:id' => 'animals#show'
    get '/animals/new' => 'animals#new'
    get '/animals/:id/edit' => 'animals#edit'


    get '/welcomes' => 'welcomes#index'

end
