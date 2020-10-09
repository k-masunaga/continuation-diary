Rails.application.routes.draw do
  devise_for :users
  root to: 'users#new'

  resources :users, only: [:show, :get] do
    member do
      get 'show'
    end
  end

  resources :objectives, only: [:new, :create] do
    resources :amounts, only: [:create]
    member do
      get 'show'
    end
  end

  resources :diaries, only: [:new, :create, :show, :edit, :update, :destroy] do
    # get 'delete'
    member do
      get 'show'
      post 'show'
      delete 'show'
    end
  end
end
