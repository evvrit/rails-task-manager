Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tasks", to: 'tasks#index'

  get "/tasks/new", to: 'tasks#new', as: :new
  post "/tasks", to: 'tasks#create'

  get "/tasks/:id", to: 'tasks#show', as: :task

  get "/tasks/:id/edit", to: 'tasks#edit', as: :edit
  patch "/tasks/:id", to: 'tasks#update'

  delete "/tasks/:id", to: 'tasks#destroy'
end



# As a user, I can list tasks #index
# As a user, I can view the details of a task #show
# As a user, I can add a new task #new #create
# As a user, I can edit a task (mark as completed / update title & details) #edit #update
# As a user, I can remove a task #destroy (delete)
