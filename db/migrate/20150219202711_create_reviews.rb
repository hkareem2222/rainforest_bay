class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :reviews, :user_id
  end
end
