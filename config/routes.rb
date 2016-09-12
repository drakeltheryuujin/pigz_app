Rails.application.routes.draw do
  resources :users
  namespace :api do
    namespace :v1 do
      jsonapi_resources :cops
      get "directions" => "directions#route"
    end
  end
end
