Rails.application.routes.draw do
  resources :projects
  resources :teams
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  default_url_options :host => "localhost"
  
  as :user do
    put '/user/confirmation' =>'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmations: 'confirmations'
  }
  root 'home#index'
end
