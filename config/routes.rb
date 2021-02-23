Rails.application.routes.draw do
  get "/home" => "home#index"
  resources :companies
  resources :jobs

  root :to => "home#index"
end
