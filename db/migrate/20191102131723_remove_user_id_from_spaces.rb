class RemoveUserIdFromSpaces < ActiveRecord::Migration[6.0]
  def change
    remove_reference :spaces, :user, null: false, foreign_key: true
  end
end
