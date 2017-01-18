Rails.application.routes.draw do
  
  

  namespace :admin do
    resources :posts
    resources :users
      match "/ban", to: "users#ban", via: [:get] 

  end
  devise_for :users
  devise_scope :user do
   get 'logout' => 'devise/sessions#destroy'
  end
  resources :admin
  resources :home
  
  root to: "home#index"
  get 'home/index'
  get 'home/new'
  get 'admin/index'
   resources :users
   
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


