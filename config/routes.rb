Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    delete 'sign_out', to: 'devise/sessions#destroy'
  end

end
