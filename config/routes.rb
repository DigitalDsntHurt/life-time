Rails.application.routes.draw do
  
  


  resources :days
  get 'pages/scratch'
  post 'pages/home', to: 'pages#set_lifespan', as: 'set_lifespan'

  get 'pages/home' => 'pages#home'
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
