class RenameLikes < ActiveRecord::Migration
  def up
    rename_column :votes, :like, :value
  end

  def down
    rename_column :votes, :value, :like
  end
end
