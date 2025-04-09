Rails.application.routes.draw do
  get "searches/index"
  get "articles/index"
  get "articles/create"
  # available routes
  root "articles#index"
  resources :searches, only: [ :index, :show, :create ]
  resources :articles, only: :index
end
