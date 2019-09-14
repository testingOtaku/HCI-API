class CreateRoleDummy < ActiveRecord::Migration[6.0]
  def up
    Role.new(name: 'normal').save
    Role.new(name: 'operator').save
    Role.new(name: 'admin').save
  end

  def down
  end
end
