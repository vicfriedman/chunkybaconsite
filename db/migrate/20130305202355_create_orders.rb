class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :bacon_type
      t.integer :quantity
      t.string :price
      t.references :customer

      t.timestamps
    end
  end
end
