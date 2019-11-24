# frozen_string_literal: true

class Place < ApplicationRecord
  mount_uploader :main_image, PlaceMainImageUploader

  enum status: { closed: 0, published: 1 }

  belongs_to :user
  has_one :owner_profile, class_name: 'PlaceOwnerProfile'
  has_many :spaces
  accepts_nested_attributes_for :spaces, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :station, presence: true
  validates :main_image, presence: true

  def publish
    update!(status: :published)
  end
end
