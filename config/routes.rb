Rails.application.routes.draw do

  devise_for :users
  
  resources :users, only: [:show]
  resources :items

  get 'about' =>'welcome# about'

  authenticated :user do
    root to: 'items#index', as: :authenticated_root
  end
   
  root to: 'welcome#index'

end