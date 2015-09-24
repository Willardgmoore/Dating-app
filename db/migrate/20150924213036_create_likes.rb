class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :likee
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
