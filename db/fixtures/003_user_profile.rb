# frozen_string_literal: true

raise StandardError, 'production環境では利用できません' if Rails.env.production?

# user_profileの作成
user_profiles = (1..3).map do |index|
  {
    id: index,
    user: User.find(index),
    organization: '株式会社ヒルカワ産業',
    representative: '田口純平',
    post_code: '1234567',
    address: '岐阜県中津川市蛭川',
    phone: '0573-11-1111'
  }
end

UserProfile.seed(
  :id, user_profiles
)
