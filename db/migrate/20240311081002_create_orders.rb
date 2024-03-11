class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.boolean :status
      t.float :total_price

      t.timestamps
    end
  end
end
