Rails.application.routes.draw do

  namespace :v1, default: { format: 'json'} do
    get 'home', to: 'home#index'
  end

  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end

  root 'static#index'
end
