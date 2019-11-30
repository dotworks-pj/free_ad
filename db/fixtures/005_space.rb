# frozen_string_literal: true

raise StandardError, 'production環境では利用できません' if Rails.env.production?

# spaceの作成
main_spaces = (1..10).map do |index|
  {
    id: index,
    place: Place.find(index),
    status: :published,
    name: '４人がけのテーブルに面した壁',
    description: "当店でもっとも空席率の低い、人気の席です。\nPCで作業されるお客様、長時間滞在されるお客様が多いです。",
    charge: 100000
  }
end

Space.seed(
  :id, main_spaces
)

sub_spaces = (1..10).map do |index|
  {
    id: 10 + index,
    place: Place.find(index),
    status: :published,
    name: '男子トイレのドアの内側',
    description: "当店でもっとも空席率の低い、人気の席です。\nPCで作業されるお客様、長時間滞在されるお客様が多いです。",
    charge: 50000
  }
end

Space.seed(
  :id, sub_spaces
)

sub_spaces_2 = (1..10).map do |index|
  {
    id: 20 + index,
    place: Place.find(index),
    status: :published,
    name: '男子トイレのドアの内側',
    description: "当店でもっとも空席率の低い、人気の席です。\nPCで作業されるお客様、長時間滞在されるお客様が多いです。",
    charge: 10000
  }
end

Space.seed(
  :id, sub_spaces_2
)
