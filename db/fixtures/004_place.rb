# frozen_string_literal: true

raise StandardError, 'production環境では利用できません' if Rails.env.production?

# placeの作成
places = (1..10).map do |index|
  {
    id: index,
    user: User.find(1),
    status: :published,
    title: '蛭川の人気カフェ！',
    name: '喫茶ヒルカワ',
    description: "恵那駅から車で20分、駅近のカフェの一部スペースをお貸しします。\n年配の人の割合が多いですが、夕方は下校中の小学生や中学生がよく来るため、終日にぎやかです。\n\n早朝から深夜まで営業していますので、ぜひご利用くださいませ！",
    address: '岐阜県中津川市蛭川',
    station: '恵那駅',
    url: 'https://dotworkscorp.com/',
    main_image: File.open('./db/fixtures/images/cafe_sample.jpg')
  }
end

Place.seed(
  :id, places
)

closed_places = (11..15).map do |index|
  {
    id: index,
    user: User.find(1),
    status: :closed,
    title: '蛭川の人気カフェ！（非公開）',
    name: '喫茶ヒルカワ',
    description: "恵那駅から車で20分、駅近のカフェの一部スペースをお貸しします。\n年配の人の割合が多いですが、夕方は下校中の小学生や中学生がよく来るため、終日にぎやかです。\n\n早朝から深夜まで営業していますので、ぜひご利用くださいませ！",
    address: '岐阜県中津川市蛭川',
    station: '恵那駅',
    url: 'https://dotworkscorp.com/',
    main_image: File.open('./db/fixtures/images/cafe_sample.jpg')
  }
end

Place.seed(
  :id, closed_places
)
