Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resources :categories do
      resources :subcategories
    end
    resources :products
    resources :images
    resources :options
    resources :information
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
