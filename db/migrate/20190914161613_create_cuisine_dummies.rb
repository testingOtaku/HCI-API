class CreateCuisineDummies < ActiveRecord::Migration[6.0]
  def up 
    Cuisine.new(name: 'American 美式').save
    Cuisine.new(name: 'Asian 亞洲菜').save
    Cuisine.new(name: 'Breakfast 早餐').save
    Cuisine.new(name: 'Burgers 漢堡').save
    Cuisine.new(name: 'Cakes & Bakery 甜品包點').save
    Cuisine.new(name: 'Chinese 中式').save
    Cuisine.new(name: 'European 歐洲菜').save
    Cuisine.new(name: 'Fast Food 快餐').save
    Cuisine.new(name: 'French 法式').save
    Cuisine.new(name: 'Greek 希臘菜').save
    Cuisine.new(name: 'Halal 清真').save
    Cuisine.new(name: 'Healthy Food 健康食品').save
    Cuisine.new(name: 'Indian 印度菜').save
    Cuisine.new(name: 'Italian 意式').save
    Cuisine.new(name: 'Japanese 日式').save
    Cuisine.new(name: 'Korean 韓式').save
    Cuisine.new(name: 'Local 港式').save
    Cuisine.new(name: 'Mediterranean 地中海').save
    Cuisine.new(name: 'Mexican 墨西哥菜').save
    Cuisine.new(name: 'Middle Eastern 中東菜').save
    Cuisine.new(name: 'Pizza 薄餅').save
    Cuisine.new(name: 'Sandwiches 三文治').save
    Cuisine.new(name: 'Seafood 海鮮').save
    Cuisine.new(name: 'Spanish 西班牙菜').save
    Cuisine.new(name: 'Sushi 壽司').save
    Cuisine.new(name: 'Thai 泰國菜').save
    Cuisine.new(name: 'Vegetarian 素食').save
    Cuisine.new(name: 'Vietnamese 越式').save
    Cuisine.new(name: 'Others 其他').save
  end

  def down
  end
end
