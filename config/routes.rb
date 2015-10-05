Rails.application.routes.draw do

  
  
  resources :tfls
  get 'report' => 'employees#report'
  get '/companies/login' => 'login#new'
  post '/companies/login' => 'login#create'
  delete "/companies/login", to: "login#destroy"
  root to: 'companies#index'
  resources :companies
  resources :cashes
  resources :employees
end
