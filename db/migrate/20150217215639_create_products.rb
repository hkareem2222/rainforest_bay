class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :condition
      t.integer :starting_bid
      t.string :location
      t.integer :quantity
      t.integer :buy_now_price
      t.text :description

      t.timestamps null: false
    end
  end
end
