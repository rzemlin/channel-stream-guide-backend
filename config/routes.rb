Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :channels, only: [:index, :create, :show, :edit, :destroy]
      resources :users, only: [:index, :create]
      resources :genres, only: [:index, :create, :edit]
      post "/login", to: "auth#create"
      patch "/channels/:id", to: "channels#edit"
      delete "/channel/:id", to: "channels#delete"
    end
  end
end
