FactoryBot.define do
  factory :user_profile do
    user { nil }
    organization { "MyString" }
    representative { "MyString" }
    post_code { "MyString" }
    address { "MyString" }
    phone { "MyString" }
  end
end
