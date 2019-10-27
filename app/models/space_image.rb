class SpaceImage < ApplicationRecord
  mount_uploader :image, SpaceImageUploader

  belongs_to :space
end
