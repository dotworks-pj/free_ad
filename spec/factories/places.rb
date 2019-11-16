# frozen_string_literal: true

FactoryBot.define do
  factory :place do
    user { nil }
    title { 'MyString' }
    description { 'MyText' }
    name { 'MyString' }
    address { 'MyString' }
    station { 'MyString' }
    url { 'MyText' }
    maim_image { 'MyString' }
  end
end
