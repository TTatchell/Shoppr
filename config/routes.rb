Rails.application.routes.draw do

  resources :orders
  resources :products
  resources :categories
  namespace :v1, default: { format: 'json'} do
    get 'home', to: 'home#index'
  end

  get '*page', to: 'welcome#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end

  root 'welcome#index'
end
