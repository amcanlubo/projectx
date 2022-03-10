Rails.application.routes.draw do
  root to: "home#index"
  mount RailsAdmin::Engine => '/command_center/super_admin', as: 'rails_admin'
  resources :user, only: [:show]
  get '/member' => 'member#index', as: :member_index
  get '/admin' => 'admin#index', as: :admin_index
  post 'create_user' => 'admin#create', as: :create_user
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
