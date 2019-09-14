class CreateUserDummies < ActiveRecord::Migration[6.0]
  def up
    User.new({
      name: 'administrator',
      username: 'administrator',
      password: '180221333',
      role_id: 3,
      is_enabled: true
    }).save
  end
  
  def down
  end
end
