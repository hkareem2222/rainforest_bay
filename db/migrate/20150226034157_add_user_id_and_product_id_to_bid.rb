class AddUserIdAndProductIdToBid < ActiveRecord::Migration
  def change
    add_column :bids, :user_id, :integer
    add_column :bids, :product_id, :integer
  end
end
