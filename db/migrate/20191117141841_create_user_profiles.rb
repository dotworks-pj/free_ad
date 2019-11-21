class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :organization, null: false
      t.string :representative, null: false
      t.string :post_code, null: false
      t.string :address, null: false
      t.string :phone, null: false

      t.timestamps
    end
  end
end
