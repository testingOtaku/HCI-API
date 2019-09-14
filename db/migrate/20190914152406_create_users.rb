class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :password_digest, null: false
      t.references :role, null: false, foreign_key: true
      t.boolean :is_enabled, null: false

      t.timestamps
    end
    add_index :users, :name, unique: true
    add_index :users, :username, unique: true
  end
end
