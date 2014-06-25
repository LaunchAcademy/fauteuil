class AddPicturesToChairs < ActiveRecord::Migration
  def up
    add_column :chairs, :picture, :string
  end

  def down
    remove_column :chairs, :picture, :string
  end
end
