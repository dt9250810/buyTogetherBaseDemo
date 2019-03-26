class Store < ApplicationRecord
  validates_presence_of :name, :phone, :address, :description
end
