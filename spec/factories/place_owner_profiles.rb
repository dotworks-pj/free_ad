# frozen_string_literal: true

FactoryBot.define do
  factory :place_owner_profile do
    place { nil }
    organization { 'MyString' }
    representative { 'MyString' }
    post_code { 'MyString' }
    address { 'MyString' }
    phone { 'MyString' }
  end
end
