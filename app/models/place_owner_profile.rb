# frozen_string_literal: true

class PlaceOwnerProfile < ApplicationRecord
  belongs_to :place

  validates :organization, presence: true
  validates :representative, presence: true
  validates :post_code, presence: true
  validates :address, presence: true
  validates :phone, presence: true
end
