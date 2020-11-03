Rails.application.routes.draw do
  #get url and point to controller#method
  get '/', to: 'users#new'
  post 'users/create'
  get 'users/show'

  get 'events/new'
  get 'events/index'
  
  post 'events/show'
  post 'events/create'

  get 'sessions/new'
  post 'sessions/create'

  get 'hello_world/index'
end
