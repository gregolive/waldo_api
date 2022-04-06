Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :characters
      resources :maps, param: :slug
      resources :scores, param: :map_id
    end
  end
end
