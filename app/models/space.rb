class Space < ApplicationRecord
  belongs_to :user
  has_many :space_images, dependent: :destroy
  accepts_nested_attributes_for :space_images, allow_destroy: true

  enum status: { closed: 0, published: 1 }

  validates :name, presence: true

  validates :charge,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 51,
            }

  validates :status, presence: true
end
