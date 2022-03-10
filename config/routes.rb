Rails.application.routes.draw do
  root to: "member#index"
  mount RailsAdmin::Engine => '/command_center/super_admin', as: 'rails_admin'
  resource :user, only: [:show]
  resource :admin 
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
