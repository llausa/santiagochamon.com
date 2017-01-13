Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  resources :contacts, only: [:new, :create]
  get '/contact', to: 'static_pages#contact'
  get '/projects', to: 'static_pages#projects'

  get '*path' => redirect('/')
end