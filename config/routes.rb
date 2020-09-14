Rails.application.routes.draw do
  resources :receptions, only: [:new, :create, :index]
end
