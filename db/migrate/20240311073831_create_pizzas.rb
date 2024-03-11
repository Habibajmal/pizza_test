class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :title
      t.float :base_price
      t.timestamps
    end
  end
end
  