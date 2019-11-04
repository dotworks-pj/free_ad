class Place < ApplicationRecord
  mount_uploader :main_image, PlaceMainImageUploader

  belongs_to :user
  has_many :spaces
  accepts_nested_attributes_for :spaces, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :station, presence: true
  validates :main_image, presence: true
end
