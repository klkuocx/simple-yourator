Rails.application.routes.draw do
  get "/home" => "home#index"
  resources :companies do
    resources :jobs, :controller => 'company_jobs'
  end
  resources :jobs

  root :to => "home#index"
end
