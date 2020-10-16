Rails.application.routes.draw do
  root 'pages#home'
  get 'courses', to: 'courses#index'
  resources :students, except: [:destroy]
  get 'login',to:'logins#new'
  post 'login',to:'logins#create'
  delete 'logout',to:'logins#destroy'
  post 'course_enroll', to: 'student_courses#create'
end
