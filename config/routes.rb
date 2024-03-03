Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'b_blogs#home'
  
  get "up" => "rails/health#show", as: :rails_health_check

 
end
