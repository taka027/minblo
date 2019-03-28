Rails.application.routes.draw do
  resources :blogs
  devise_for :users
  root 'page#index'
  get '/p/:category_id/:id', to: 'page#page', as: 'page'
  get '/c/:id', to: 'page#category', as: 'category'
  

end
