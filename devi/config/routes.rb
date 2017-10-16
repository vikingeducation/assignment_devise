Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'users#index'
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "login", :to => "devise/sessions#new"
    delete "sign_out", :to => "devise/sessions#destroy"
    delete "logout", :to => "devise/sessions#destroy"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
