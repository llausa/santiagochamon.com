Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  resources :contacts, only: [:new, :create]
  get '/contact', 	to: 'static_pages#contact'
  get '/projects',  to: 'static_pages#projects'
  get '/about',		to: 'static_pages#about'

  get '*path' => redirect('/')
end