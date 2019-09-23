Rails.application.routes.draw do
  resources :sales
  root "departments#index"
  resources :departments
end
