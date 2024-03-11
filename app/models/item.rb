class Item < ApplicationRecord
  belongs_to :order
  belongs_to :pizza
  has_many :item_ingredients
  accepts_nested_attributes_for :item_ingredients

end
