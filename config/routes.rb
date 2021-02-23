Rails.application.routes.draw do
  get "/home" => "home#index"
  resources :companies

  root :to => "home#index"
end
