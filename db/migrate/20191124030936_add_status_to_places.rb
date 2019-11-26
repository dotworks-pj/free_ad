# frozen_string_literal: true

class AddStatusToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :status, :integer, default: 0, null: false, after: :user_id
  end
end
