Rails.application.routes.draw do

  devise_for :users
  root to: 'hospital#home'


  resources :certificates, path: 'certificates'
  resources :receivings, path: 'receivings'
  resources :doctors, path: 'doctors'
  resources :patients, path: 'patients'
  resources :hospitals, path: 'hospitals'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
