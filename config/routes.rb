Rails.application.routes.draw do
  resources :users
 
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root 'user#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
