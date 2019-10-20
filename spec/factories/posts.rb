FactoryBot.define do
  factory :space do
    user { nil }
    name { "MyString" }
    charge { 1 }
    status { 1 }
    description { "MyText" }
  end
end
