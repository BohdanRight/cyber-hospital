Rails.application.routes.draw do

  resources :users, only: [:new, :create, :delete]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :sessions, path: 'sessions'
  get 'logout', to: 'sessions#logout'



  resources :certificates, path: 'certificates'
  resources :receivings, path: 'receivings'
  resources :doctors, path: 'doctors'
  resources :patients, path: 'patients'
  root 'sessions#welcome'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
