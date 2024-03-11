class ItemIngredient < ApplicationRecord
  belongs_to :item
  belongs_to :ingredient
  enum :status, {"Add"=> "add", "Remove"=>"remove "}
end
