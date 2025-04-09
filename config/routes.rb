Rails.application.routes.draw do
  # available routes
  root "articles#index"
  resources :searches, only: [ :index, :show ]
  resources :articles, only: :index
end
