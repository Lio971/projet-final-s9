class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.belongs_to :user, foreign_key: true
      t.integer  "quantity",   default: 1
      t.integer  "product_id"
      t.integer  "order_id"
         validates :quantity, numericality { :equal_to: 1 }
      t.timestamps
    end
  end
end
