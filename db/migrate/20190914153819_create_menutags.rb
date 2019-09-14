class CreateMenutags < ActiveRecord::Migration[6.0]
  def change
    create_table :menutags do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
    add_index :menutags, [:menu_id, :tag_id], unique: true
  end
end
