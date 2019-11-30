# frozen_string_literal: true

raise StandardError, 'production環境では利用できません' if Rails.env.production?

# space_imageの作成
Space.find_each do |space|
  space_images = (1..4).map do |index|
    {
      id: (space.id - 1) * 4 + index,
      space: space,
      image:  File.open("./db/fixtures/images/sample.png"),
    }
  end

  SpaceImage.seed(
    :id, space_images
  )
end

