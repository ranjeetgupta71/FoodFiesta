Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
  get '/login', to: 'login#index'

  get '/signup', to: 'registrations#new'
  post '/signup', to: 'registrations#create'

  get '/signin', to: 'signin#new'
  post '/signin', to: 'signin#create'
  delete '/signin', to: 'signin#destroy'
  # delete '/signout', to: 'signin#destroy', as: 'signout'


  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show'


  resources :restaurants do
    resources :foods do
      resources :comments
    end
  end

  # get "/articles/:id", to: "articles#show"
  # resources :restaurants, only: [:index]

end
