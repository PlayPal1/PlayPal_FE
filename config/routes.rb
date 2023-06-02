Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root "welcome#index"
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/dashboard', to: 'users#show'
end
