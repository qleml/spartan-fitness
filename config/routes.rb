Rails.application.routes.draw do
  get "pages/home"
  root "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :exercise_category
  resources :users
  resources :exercises
  namespace :api do
    resources :exercises
  end
  resources :workouts
  namespace :api do
    resources :workouts
  end
  get "/select_user", to: "users#select", as: "select_user"
  post "/set_user", to: "users#set_user", as: "set_user"
  delete "/logout", to: "users#logout", as: "logout"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
