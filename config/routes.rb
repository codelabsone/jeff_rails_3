Rails.application.routes.draw do
  get "departments/1" => "departments#sales"
  root "departments#index"
  resources :departments do
    resources :sales
  end
end
