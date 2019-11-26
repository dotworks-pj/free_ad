# frozen_string_literal: true

class AddPlaceIdToSpaces < ActiveRecord::Migration[6.0]
  def up
    add_reference :spaces, :place, foreign_key: true, after: :id
    change_column :spaces, :place_id, :bigint, null: false
  end

  def down
    remove_foreign_key :spaces, :places
    remove_reference :spaces, :place
  end
end
