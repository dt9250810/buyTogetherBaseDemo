class Order < ApplicationRecord
  # relationship
  belongs_to :user
  belongs_to :purchase
  has_many   :ordered_items
  # inner join
  has_many   :items, through: :ordered_items

  # update related table 
  # allow_destroy: true => 表示也可以刪除
  # order_params = {
  #  'ordered_items_attributes': {
  #     '0': {
  #       'id': 10,
  #       'quantity': 3 
  #     }
  #   }
  # }
  accepts_nested_attributes_for :ordered_items, allow_destroy: true
end
