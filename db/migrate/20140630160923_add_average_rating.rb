class AddAverageRating < ActiveRecord::Migration
  def change
    add_column :chairs, :average_rating, :float
  end
end
