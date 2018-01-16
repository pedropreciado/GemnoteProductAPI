Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resources :categories, only: [:index, :create, :show, :destroy]
    resources :products, only: [:index, :create, :show, :destroy]
    resources :subcategories, only: [:create]
    resources :information, only: [:create]
    resources :images, only: [:create]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
