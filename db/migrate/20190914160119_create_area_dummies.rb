class CreateAreaDummies < ActiveRecord::Migration[6.0]
  def up
    Area.new({name: 'Central and Western	中西區', city_id: 1}).save
    Area.new({name: 'Eastern	東區', city_id: 1}).save
    Area.new({name: 'Southern	南區', city_id: 1}).save
    Area.new({name: 'Wan Chai	灣仔區', city_id: 1}).save
    Area.new({name: 'Sham Shui Po	深水埗區', city_id: 2}).save
    Area.new({name: 'Kowloon City	九龍城區', city_id: 2}).save
    Area.new({name: 'Kwun Tong	觀塘區', city_id: 2}).save
    Area.new({name: 'Wong Tai Sin	黃大仙區', city_id: 2}).save
    Area.new({name: 'Yau Tsim Mong	油尖旺區', city_id: 2}).save
    Area.new({name: 'Islands	離島區', city_id: 3}).save
    Area.new({name: 'Kwai Tsing	葵青區', city_id: 3}).save
    Area.new({name: 'North	北區', city_id: 3}).save
    Area.new({name: 'Sai Kung	西貢區', city_id: 3}).save
    Area.new({name: 'Sha Tin	沙田區', city_id: 3}).save
    Area.new({name: 'Tai Po	大埔區', city_id: 3}).save
    Area.new({name: 'Tsuen Wan	荃灣區', city_id: 3}).save
    Area.new({name: 'Tuen Mun	屯門區', city_id: 3}).save
    Area.new({name: 'Yuen Long	元朗區', city_id: 3}).save
  end

  def down
  end
end
