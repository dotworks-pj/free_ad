# frozen_string_literal: true

raise StandardError, 'production環境では利用できません' if Rails.env.production?

# place_owner_profileの作成
place_owner_profiles = (1..10).map do |index|
  {
    id: index,
    place: Place.find(index),
    organization: '株式会社ヒルカワ産業',
    representative: '田口純平',
    post_code: '1234567',
    address: '岐阜県中津川市蛭川',
    phone: '0573-11-1111'
  }
end

PlaceOwnerProfile.seed(
  :id, place_owner_profiles
)
