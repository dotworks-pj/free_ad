class AddPlaceIdToSpaces < ActiveRecord::Migration[6.0]
  def change
    add_reference :spaces, :place, null: false, foreign_key: true, after: :id
  end
end
