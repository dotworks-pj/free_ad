class Advertisement < ApplicationRecord
  mount_uploader :qr_image, PlaceMainImageUploader
  mount_uploader :original_image, PlaceMainImageUploader

  belongs_to :user
  belongs_to :advertisement_template
end
