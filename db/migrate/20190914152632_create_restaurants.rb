class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.references :cuisine, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :phone
      t.string :email

      t.timestamps
    end
    add_index :restaurants, :name, unique: true
    add_index :restaurants, :phone, unique: true
    add_index :restaurants, :email, unique: true
  end
end
