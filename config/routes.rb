Rails.application.routes.draw do
  devise_for :users
  root to: 'users#new'

  resources :users, only: [:show, :get] do
    member do
      get 'show'
    end
  end

  resources :amounts, only: [:show, :destroy]

  resources :objectives, only: [:new, :create,:show, :destroy] do
    get 'delete'
    resources :amounts, only: [:create] do
    end
  end

  resources :diaries, only: [:new, :create, :show, :edit, :update, :destroy] do
    get 'delete'
  end

  resources :logs, only: [:show]
end
