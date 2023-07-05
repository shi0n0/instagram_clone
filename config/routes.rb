Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  get '/articles', to: 'articles#index'
  get '/profiles', to: 'profiles#index'
  get '/follows', to: 'follows#index'
  get '/followers', to: 'followers#index'

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
