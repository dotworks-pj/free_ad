# frozen_string_literal: true

Rails.application.routes.draw do
  root 'root#index'

  namespace :admin do
    root 'root#index'
  end

  resources :places, only: [:show]

  namespace :mypage do
    root 'root#index'

    resources :user_profiles, only: %i[new edit create update]
    resources :places, except: [:destroy] do
      resources :spaces, except: [:destroy]
      resource :place_owner_profiles, path: :owner_profile, as: :owner_profile, only: %i[new edit create update]
    end
  end

  devise_for :admin_users, path: :admin, controllers: {
    sessions: 'admin/admin_users/sessions',
    passwords: 'admin/admin_users/passwords'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }

  devise_scope :user do
    patch 'users/confirmation', to: 'users/confirmations#confirm'
  end

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
