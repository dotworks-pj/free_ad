Rails.application.routes.draw do
  namespace :admin do
    root 'root#index'
  end

  devise_for :admin_users, path: :admin, controllers: {
    sessions: 'admin/admin_users/sessions',
    passwords: 'admin/admin_users/passwords'
  }
end
