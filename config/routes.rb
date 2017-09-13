Rails.application.routes.draw do
  root to: "person#new"
  resources :person, only: [:new, :create]
  get "/thanks", to: "staticpage#index"
end
