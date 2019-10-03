Rails.application.routes.draw do
  get "departments/sales" => "departments#sales"
  root "departments#index"
  resources :departments do
    resources :sales
  end
end
