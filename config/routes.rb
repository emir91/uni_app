Rails.application.routes.draw do
  root 'courses#index'
  resources :students, except: [:destroy]
  get 'login',to:'logins#new'
  post 'login',to:'logins#create'
  delete 'logout',to:'logins#destroy'
end
