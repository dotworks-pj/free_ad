class Post < ApplicationRecord
  belongs_to :user

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
