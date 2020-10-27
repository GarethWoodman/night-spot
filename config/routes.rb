Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  #get url and point to controller#method
  get '/', to: 'users#new'
  post 'users/create'
  get 'hello_world/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
