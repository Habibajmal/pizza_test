class Order < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items
  before_create :set_total_price

  def set_total_price
    sum = 0
    self.items.each do |item|
      sum = sum + (item.pizza.base_price * PriceSetting.find(item.price_id.to_i).price_multipler)
    end
    self.total_price = sum
  end
end
