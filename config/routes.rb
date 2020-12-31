Rails.application.routes.draw do
  resources :guests
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"
 end
  resources :users
  root 'guests#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
