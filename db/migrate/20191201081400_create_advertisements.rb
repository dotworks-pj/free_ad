class CreateAdvertisements < ActiveRecord::Migration[6.0]
  def change
    create_table :advertisements do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.references :advertisement_template, null: false, foreign_key: true
      t.string :title
      t.text :url
      t.string :qr_image
      t.string :description
      t.boolean :use_template, default: true, null: false
      t.string :original_image

      t.timestamps
    end
  end
end
