FactoryBot.define do
  factory :post do
    user { nil }
    name { "MyString" }
    charge { 1 }
    status { 1 }
    description { "MyText" }
  end
end
