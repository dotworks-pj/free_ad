# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one :profile, class_name: 'UserProfile', dependent: :destroy
  has_many :places, dependent: :destroy

  def password_required?
    super if confirmed?
  end
end
