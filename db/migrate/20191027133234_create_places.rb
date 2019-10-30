class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description, null: false
      t.string :name, null: false
      t.string :address, null: false
      t.string :station, null: false
      t.text :url
      t.string :maim_image, null: false

      t.timestamps
    end
  end
end
