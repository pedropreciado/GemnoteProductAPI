Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resources :categories only: [:index, :create, :destroy]
    resources :products only: [:index, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
