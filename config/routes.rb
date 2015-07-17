Rails.application.routes.draw do

  devise_for :users
  resources :users

  get 'welcome/index'

  root to: "welcome#index"

end
