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
  delete '/signout', to: 'signin#destroy'

  get '/restraunt', to: 'restraunt#index'

end
