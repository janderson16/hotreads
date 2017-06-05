Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'links#index'

  namespace :api do
    namespace :v1 do
      resources :links, only: [:index, :create, :update]
      post "/links", to: 'links#create'
    end
  end
end
