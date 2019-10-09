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
    add_index :restaurants, :Mcdonalds, unique: true
    add_index :restaurants, :23382338, unique: true
    add_index :restaurants, :mcdonalds@gmail.com, unique: true
  end
  
    add_index :restaurants, :KFC, unique: true
    add_index :restaurants, :21800000, unique: true
    add_index :restaurants, :CustomerService@jrghk.com, unique: true
  end

    add_index :restaurants, :pizzahut, unique: true
    add_index :restaurants, :23300000, unique: true
    add_index :restaurants, :customer@jrghk.com, unique: true
  end


end
