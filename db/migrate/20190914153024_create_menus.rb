class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :title, null: false
      t.references :restaurant, null: false, foreign_key: true
      t.boolean :is_enabled, null: false
      t.boolean :is_special, null: false
      t.datetime :from, null: false
      t.datetime :to, null: false

      t.timestamps
    end
  end
end
