Rails.application.routes.draw do
  resources :scores
  namespace :api do
    namespace :v1 do
      resources :characters
      resources :maps
    end
    namespace :v2 do
      resources :characters, param: :map_id
      resources :maps, param: :slug
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
