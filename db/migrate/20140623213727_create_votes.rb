class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.integer :review_id, null: false
    	t.integer :user_id, null: false
    	#need to validate between +1 and -1
    	t.integer :value, null: false

      t.timestamps
    end
  end
end
