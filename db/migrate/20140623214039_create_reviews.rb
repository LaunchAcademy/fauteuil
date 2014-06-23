class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.decimal :rating, null: false
      t.integer :user_id, null: false
      t.integer :chair_id, null: false

      t.timestamps
    end
  end
end
