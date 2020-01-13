Rails.application.routes.draw do
 # resources :students, :school_classes, only: [:index, :show, :create, :new, :edit, :update, :delete]
  get '/', to: "school_classes#index"
  get '/school_classes/:id/edit', to: "school_classes#edit", as: "edit_school_class"
  get '/students/:id/edit', to: "students#edit", as: "edit_student"
  get '/school_classes/new', to: "school_classes#new", as: "new_school_class"  
  get '/students/new', to: "students#new", as: "new_student"
  post '/school_classes/', to: "school_classes#create"
  get '/school_classes/:id', to: "school_classes#show", as: "school_class"
  get '/school_classes', to: "school_classes#index"
  post '/students/', to: "students#create"
  get '/students/:id', to: "students#show", as: "student"
  get '/students', to: "students#index"
  patch '/school_classes/:id', to: "school_classes#update"
  patch '/students/:id', to: "students#update"
  delete '/students/:id', to: "students#delete"
  delete '/school_classes/:id', to: "school_classes#delete"
end
