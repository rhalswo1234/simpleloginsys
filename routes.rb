Rails.application.routes.draw do
  resources :simplelogins
  get '/simplelogins/login', to: 'simplelogins#login'
  post '/simplelogins/login', to: 'simplelogins#login'

 end
