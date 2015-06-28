Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'users#index'

  devise_scope :user do
   get "sign_in", to: "devise/sessions#new"
   get "login", :to => "devise/sessions#new"
   delete "sign_out", :to => "devise/sessions#destroy"
   delete "logout", :to => "devise/sessions#destroy"
 end
end
