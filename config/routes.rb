Rails.application.routes.draw do
  
  


  resources :annotations
  resources :custom_dates
  
  match '/days/reset', to: 'days#reset', via: :delete
  resources :days

  get 'pages/custom_lifespan' => 'pages#custom_lifespan'
  get 'pages/scratch'
  post 'pages/custom_lifespan', to: 'pages#set_lifespan', as: 'set_lifespan'

  get 'pages/home' => 'pages#home'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
