raise StandardError, 'production環境では利用できません' if Rails.env.production?

# userの作成
users = (1..3).map do |index|
  {
    id: index,
    email: "user_#{index}@example.com",
    password: 'password',
    password_confirmation: 'password',
    confirmed_at: Time.current
  }
end

User.seed(
  :id, users
)
