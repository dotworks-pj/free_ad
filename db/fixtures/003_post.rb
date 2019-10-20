raise StandardError, 'production環境では利用できません' if Rails.env.production?

# itemの作成
Post.seed(
  :id,
  {
    id: 1,
    user: User.find(1),
    name: '廃サウナ写真集',
    description: 'サウナー歴50年の小生が全国各地を旅して撮りためた廃サウナを写真集にしてみました。日本独自のサウナ文化を象徴する昭和レトロな施設の写真が満載です！',
    charge: 600,
    status: :published,
    created_at: Time.current
  },
  {
    id: 2,
    user: User.find(1),
    name: 'アヒルちゃんと初めての銭湯',
    description: '話題沸騰の絵本「アヒルちゃんシリーズ」の最新作！今作は、アヒルちゃん一家が初めて銭湯に行きます。はたしてアヒルちゃん達は無事銭湯に入れるのでしょうか。',
    charge: 500,
    status: :published,
    created_at: Time.current - 1.day
  },
  {
    id: 3,
    user: User.find(1),
    name: '湯けむりととのい事件 下',
    description: '銭湯を舞台に繰り広げられる長編サスペンス。ととのいの先に見えた衝撃の事実とは・・・！？',
    charge: 20000,
    status: :published,
    created_at: Time.current - 2.days
  },
  {
    id: 4,
    user: User.find(1),
    name: '銭湯×ねこフォトブック',
    description: '銭湯とねこを掛け合わせたフォトブックです。',
    charge: 15000,
    status: :published,
    created_at: Time.current - 3.days
  },
  {
    id: 5,
    user: User.find(1),
    name: 'サウナでととのうヒーリングミュージック',
    description: 'サウナで聴きたいヒーリングミュージック15曲を厳選して詰め合わせました。ぜひサ活のお供にご利用ください。',
    charge: 3000,
    status: :published,
    created_at: Time.current - 4.days
  },
  {
    id: 6,
    user: User.find(3),
    name: '全国の露天風呂付き温泉旅館',
    description: '全国の露天風呂付き温泉旅館を紹介する動画です。',
    charge: 890,
    status: :published,
    created_at: Time.current - 5.days
  },
  {
    id: 7,
    user: User.find(3),
    name: 'ヴィヒタを使ったウィスキングの指南書',
    description: 'ヴィヒタを体験してみたいけどどうしたらいいの？そんな疑問はこちらの指南書を読めば全て解消できます。ヴィヒタの入手方法〜ウィスキングの仕方まで全てをこの１冊に詰め込みました！',
    charge: 1800,
    status: :published,
    created_at: Time.current - 6.days
  },
  {
    id: 8,
    user: User.find(3),
    name: 'お風呂ねこ作品集',
    description: '粘土で作ったお風呂ねこの作品を写真集にしました。',
    charge: 51,
    status: :published,
    created_at: Time.current - 7.days
  },
  {
    id: 9,
    user: User.find(3),
    name: 'セルフロウリュのすヽめ',
    description: 'セルフロウリュのお作法をまとめました。セルフロウリュは他のお客さんのことも考えながら、用法用量を守ってご利用ください。',
    charge: 150,
    status: :published,
    created_at: Time.current - 8.days
  },
  {
    id: 10,
    user: User.find(3),
    name: 'ととのいネコ写真集',
    description: 'ととのった猫ちゃん達を見ればあなたもととのえるかも・・・？',
    charge: 2100,
    status: :published,
    created_at: Time.current - 9.days
  }
)

published_posts = (1..5).map do |index|
  {
    id: 10 + index,
    user: User.find(1),
    name: "公開中の商品#{index}",
    description: '木曾路はすべて山の中である。あるところは岨づたいに行く崖の道であり、あるところは数十間の深さに臨む木曾川の岸であり、あるところは山の尾をめぐる谷の入り口である。一筋の街道はこの深い森林地帯を貫いていた。東ざかいの桜沢から、西の十曲峠まで、木曾十一宿はこの街道に添うて、二十二里余にわたる長い谿谷の間に散在していた。道路の位置も幾たびか改まったもので、古道はいつのまにか深い山間に埋もれた。名高い桟も、蔦のかずらを頼みにしたような危い場処ではなくなって、徳川時代の末にはすでに渡ることのできる橋であった。新規に新規にとできた道はだんだん谷の下の方の位置へと降って来た。道の狭いところには、木を伐って並べ、藤づるでからめ、それで街道の狭いのを補った。長い間にこの木曾路に起こって来た変化は、いくらかずつでも嶮岨な山坂の多いところを歩きよくした。そのかわり、大雨ごとにやって来る河水の氾濫が旅行を困難にする',
    charge: 100,
    status: :published,
    created_at: Time.current - 10.days
  }
end

Post.seed(

  :id, published_posts
)

closed_posts = (1..5).map do |index|
  {
    id: 16 + index,
    user: User.find(3),
    name: "非公開の商品#{index}",
    description: '非公開の商品です',
    charge: 100,
    status: :closed,
    created_at: Time.current - 10.days
  }
end

Post.seed(
  :id, closed_posts
)
