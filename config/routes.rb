Rails.application.routes.draw do
  jsonapi_resources :users
  jsonapi_resources :phone_numbers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
