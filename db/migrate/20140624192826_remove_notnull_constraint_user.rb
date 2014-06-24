class RemoveNotnullConstraintUser < ActiveRecord::Migration
  def up
    change_column :chairs, :user_id, :integer, null: true
  end

  def down
    change_column :chairs, :user_id, :integer, null: false
  end
end
