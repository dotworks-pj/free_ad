# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :charge, null: false
      t.integer :status, default: 0, null: false
      t.text :description

      t.timestamps
    end
  end
end
