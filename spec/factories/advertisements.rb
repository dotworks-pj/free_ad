FactoryBot.define do
  factory :advertisement do
    user { nil }
    name { "MyString" }
    use_template { false }
    advertisement_templates { nil }
    title { "MyString" }
    url { "MyText" }
    qr_image { "MyString" }
    description { "MyString" }
    original_image { "MyString" }
  end
end
