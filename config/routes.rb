Rails.application.routes.draw do
  # for user
  get "/home" => "home#index"
  resources :companies do
    resources :jobs, :controller => 'company_jobs'
  end
  resources :jobs

  root :to => "home#index"

  # for admin
  namespace :admin do
    resources :companies
  end
end
