class RenamePostsToSpaces < ActiveRecord::Migration[6.0]
  def change
    rename_table :posts, :spaces
  end
end
