class CreateJoinItemOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :join_item_orders do |t|

      t.timestamps
    end
  end
end
