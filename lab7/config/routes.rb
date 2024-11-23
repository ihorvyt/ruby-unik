Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :users do
    collection do
      delete 'destroy_all'
    end
  end

  resource :user, only: [:show]

  resources :posts
  

  get "hi/index"
  # get "up" => "rails/health#show", as: :rails_health_check
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "about" => "welcome#about"

  root "welcome#index"
end
