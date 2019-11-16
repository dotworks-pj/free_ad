# frozen_string_literal: true

class CreateSpaceImages < ActiveRecord::Migration[6.0]
  def change
    create_table :space_images do |t|
      t.references :space, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
