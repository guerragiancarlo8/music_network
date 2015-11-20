Rails.application.routes.draw do
  get '/' => 'concerts#index'
  get '/concerts/:id' => 'concerts#show'
  post '/concerts/:id' => 'concerts#add_comment'
  get '/add' => 'concerts#new'
  post '/add' => 'concerts#create'


  #vista intermedia donde se accesa el
  get '/sort' => 'concerts#sort'
  post '/sorted' => 'concerts#sorted'

  get '/popular' => 'concerts#popular'
 
end
