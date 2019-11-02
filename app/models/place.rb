class Place < ApplicationRecord
  mount_uploader :main_image, PlaceMainImageUploader

  belongs_to :user
  has_many :spaces

  validates :title, presence: true
  validates :description, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :station, presence: true
  validates :main_image, presence: true
end
