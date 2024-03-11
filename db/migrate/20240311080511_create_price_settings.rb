class CreatePriceSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :price_settings do |t|
      t.string :size
      t.float :price_multipler

      t.timestamps
    end
  end
end
