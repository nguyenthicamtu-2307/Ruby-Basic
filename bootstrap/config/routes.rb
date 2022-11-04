Rails.application.routes.draw do
  resources :students_books
  resources :students
  resources :books
  get 'user/index'
  root 'user#index'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "/"
end
