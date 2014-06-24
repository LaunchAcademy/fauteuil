class AddDefaultRoleToUser < ActiveRecord::Migration
  def up
    change_column :users, :role, :string, default: "user", null: false
  end

  def down
    change_column :users, :role, :string, null: false
  end
end
