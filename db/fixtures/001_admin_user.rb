# frozen_string_literal: true

raise StandardError, 'production環境では利用できません' if Rails.env.production?

## admin_userの作成
AdminUser.seed(
  :id,
  id: 1,
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)
