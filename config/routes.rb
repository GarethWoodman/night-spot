Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  #get url and point to controller#method
  get '/', to: 'user#new'
  get 'user/create'
  get 'hello_world/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
