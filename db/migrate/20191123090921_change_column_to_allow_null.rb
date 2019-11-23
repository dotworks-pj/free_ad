class ChangeColumnToAllowNull < ActiveRecord::Migration[6.0]
  def up
    change_column :places, :title, :string, null: true
    change_column :places, :description, :text, null: true
    change_column :places, :name, :string, null: true
    change_column :places, :address, :string, null: true
    change_column :places, :station, :string, null: true
    change_column :places, :main_image, :string, null: true

    change_column :spaces, :name, :string, null: true
    change_column :spaces, :charge, :integer, null: true
    change_column :spaces, :charge, :integer, null: true
  end

  def down
    change_column :places, :title, :string, null: false
    change_column :places, :description, :text, null: false
    change_column :places, :name, :string, null: false
    change_column :places, :address, :string, null: false
    change_column :places, :station, :string, null: false
    change_column :places, :main_image, :string, null: false

    change_column :spaces, :name, :string, null: false
    change_column :spaces, :charge, :integer, null: false
    change_column :spaces, :charge, :integer, null: false
  end
end
