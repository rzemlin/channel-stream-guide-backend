Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :channels, only: [:index, :create]
      resources :users, only: [:create]
      resources :users, only: [:index, :create]
      post "/login", to: "auth#create"
    end
  end
end
