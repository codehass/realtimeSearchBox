Rails.application.routes.draw do
  get "articles/index"
  get "articles/create"
  # available routes
  root "articles#index"
  resources :searches, only: [ :index, :show ]
  resources :articles, only: :index
end
