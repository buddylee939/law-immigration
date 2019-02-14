Rails.application.routes.draw do
  resources :field_offices
  resources :form_n400s
  root 'welcome#index'
  devise_for :users
  resources :citizen_forms
  # resources :user_steps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
