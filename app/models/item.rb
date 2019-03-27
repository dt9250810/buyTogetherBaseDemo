class Item < ApplicationRecord
  mount_uploader :image, ItemImageUploader

  belongs_to :store

  validates_presence_of :name, :price, :image
  
end
