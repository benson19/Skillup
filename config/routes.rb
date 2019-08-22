Rails.application.routes.draw do
  resources :skills
  resources :user_skills
  resources :user_projects
  resources :projects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to:"login#new"
  post "/login", to:"login#create"
  post "/logout", to:"login#destroy"

  root "login#new"
end
