# frozen_string_literal: true

class Space < ApplicationRecord
  belongs_to :place
  has_many :space_images, dependent: :destroy
  accepts_nested_attributes_for :space_images, allow_destroy: true

  SPACE_IMAGE_LIMIT = 4

  enum status: { closed: 0, published: 1 }

  validates :name, presence: true

  validates :charge,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 51
            }

  validates :status, presence: true

  def build_space_images
    (SPACE_IMAGE_LIMIT - space_images.count).times do
      space_images.build
    end
  end
end
