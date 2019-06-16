Rails.application.routes.draw do
  resources :project_users
  resources :post_releases
  resources :posts
  resources :project_environments
  resources :projects
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'main#index'
end