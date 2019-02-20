Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # HTTP-VERB 'PATH', to: 'CONTROLLER#ACTION', AS: PREFIX

  # index
  get 'tasks', to: 'tasks#index'

  # create
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # update
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  # show
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
