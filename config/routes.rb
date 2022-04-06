Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :characters
      resources :maps
    end
    namespace :v2 do
      resources :characters, param: :map_id
      resources :maps, param: :slug
    end
    namespace :v3 do
      resources :characters, param: :map_id
      resources :maps, param: :slug
      resources :scores, param: :map_id
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
