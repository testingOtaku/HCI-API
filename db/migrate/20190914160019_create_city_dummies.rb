class CreateCityDummies < ActiveRecord::Migration[6.0]
  def up 
    City.new(name: 'Hong Kong Island 香港島').save
    City.new(name: 'Kowloon 九龍').save
    City.new(name: 'New Territories 新界').save
  end

  def down
  end
end
