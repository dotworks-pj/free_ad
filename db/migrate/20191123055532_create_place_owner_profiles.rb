# frozen_string_literal: true

class CreatePlaceOwnerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :place_owner_profiles do |t|
      t.references :place, null: false, foreign_key: true
      t.string :organization
      t.string :representative
      t.string :post_code
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
