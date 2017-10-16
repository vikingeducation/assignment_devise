Rails.application.routes.draw do
  devise_scope :user do
    get "sign_up", to: "devise/registrations#new"
    get "sign_in", to: "devise/sessions#new"
    get "login", :to => "devise/sessions#new"
    delete "sign_out", :to => "devise/sessions#destroy"
    delete "logout", :to => "devise/sessions#destroy"
  end
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'devise/registrations#index'
end
