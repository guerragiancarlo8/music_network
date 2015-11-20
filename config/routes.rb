Rails.application.routes.draw do
  get '/' => 'concerts#index'
  get '/concerts/:id' => 'concerts#show'
  get '/add' => 'concerts#new'
  post '/add' => 'concerts#create'


  
  
end
