require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :items
    end
  end

  resources :items do
    get :upvote, on: :member
    get :expensive, on: :collection
  end
  resources :admin do
    get :users_count, on: :member
  end

  root to: 'items#index'
end
