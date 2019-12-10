class CreateAdvertisementTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :advertisement_templates do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
