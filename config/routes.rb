Rails.application.routes.draw do
  namespace :api do
    get 'categories/index'
  end

  namespace :api do
    get 'categories/new'
  end

  namespace :api do
    get 'categories/edit'
  end

  namespace :api do
    get 'categories/create'
  end

  namespace :api do
    get 'categories/update'
  end

  namespace :api do
    get 'categories/destroy'
  end

  namespace :api do
    get 'categories/show'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
