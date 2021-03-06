# frozen_string_literal: true

class SpaceImageUploader < BaseImageUploader
  process resize_to_fit: [540, 360]

  version :thumb do
    process resize_to_fit: [210, 140]
  end

  def default_url
    'sample.png'
  end
end
