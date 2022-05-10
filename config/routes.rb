Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all
  get '/tasks', to: 'tasks#index', as: 'tasks'
  # create
  get '/task/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'
  # read one
  get '/task/:id', to: 'tasks#show', as: 'task'
  # update
  get '/task/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/task/:id', to: 'tasks#update'
  # destroy
  delete '/task/:id', to: 'tasks#destroy'
end
