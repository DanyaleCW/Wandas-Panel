Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'admins#index'
  get "/schools/:school" => "schools#show"
  get "/helps/:help" => "helps#show"

  resources :students
  resources :courses
  resources :instructors
  resources :cohorts

 
end
