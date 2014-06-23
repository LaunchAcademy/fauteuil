class CreateChairs < ActiveRecord::Migration
  def change
    create_table :chairs do |t|
      t.string :name, null: false
      t.integer :category_id, null: false
      t.text :description
      t.string :manufacturer
      t.string :location, null: false
      t.integer :user_id, null: false
      
      t.timestamps
    end
  end
end
