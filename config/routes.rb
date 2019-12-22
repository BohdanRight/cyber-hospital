Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  resources :certificates, path: 'certificates'
  resources :receivings, path: 'receivings'
  resources :doctors, path: 'doctors'
  resources :patients, path: 'patients'
  root 'doctors#index'

  #root to: 'mmonitors#index'
  #devise_for :users
  #resources :mmonitors, path: 'monitor'
  #resources :mbrands, path: 'brand'
  #resources :mtypes, path: 'type'
  #resources :mdiagonals, path: 'diagonal'
  #resources :mresolutions, path: 'resolution'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
