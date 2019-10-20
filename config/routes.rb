Rails.application.routes.draw do
  root 'root#index'

  namespace :admin do
    root 'root#index'
  end

  namespace :mypage do
    root 'root#index'
    resources :spaces, except: [:destroy]
  end

  devise_for :admin_users, path: :admin, controllers: {
    sessions: 'admin/admin_users/sessions',
    passwords: 'admin/admin_users/passwords'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }

  devise_scope :user do
    patch "users/confirmation", to: "users/confirmations#confirm"
  end

  mount LetterOpenerWeb::Engine, at: "/letter_opener"  if Rails.env.development?
end
