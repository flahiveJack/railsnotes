Rails.application.routes.draw do
  resources :notes
  devise_for :users
  
  get 'home/index'
  get 'home/news'
  get 'home/weather'
  #root 'home#index'
  root 'notes#index'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
