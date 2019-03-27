Rails.application.routes.draw do
  resources :blogs
  devise_for :users
  root 'page#index'
  get '/:id', to: 'page#page', as: 'page'

end
