Rails.application.routes.draw do

  resources :orders
  resources :products
  resources :categories

  get '*page', to: 'welcome#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end

  namespace :api do
    namespace :v1 do
      get 'products/index'
      post 'products/create'
      delete 'products/:id', to: 'products#destroy'
    end
  end

  root 'welcome#index'
end
