Rails.application.routes.draw do
  
  get '/microphones' => 'microphones#index'
  post '/microphones' => 'microphones#create'
  get '/microphones/:id' => 'microphones#show'
  delete '/microphones/:id' => 'microphones#destroy'


end
