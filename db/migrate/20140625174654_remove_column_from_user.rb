class RemoveColumnFromUser < ActiveRecord::Migration

  def up
    remove_column :users, :picture
  end

  def down
    add_column :users, :picture, :text
  end

end
