class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.string :email, null: false
      t.text :picture

      t.string :role, null: false
      t.timestamps
    end
  end
end
