class Purchase < ApplicationRecord
  # relationship
  belongs_to :store
  belongs_to :user
  has_many   :orders
end
