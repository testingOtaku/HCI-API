class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name, null: false
      t.numeric :price, null: false
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
