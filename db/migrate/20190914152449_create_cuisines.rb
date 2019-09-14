class CreateCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :cuisines, :name, unique: true
  end
end
