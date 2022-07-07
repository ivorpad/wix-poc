Rails.application.routes.draw do
  get 'website/show'
  namespace :admin do
    resources :sections
    resources :themes
    resources :websites
  end
  


  devise_for :users
  get 'dashboard/index'
  get 'website/:id' => 'website#show', as: :website
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"

 
end
