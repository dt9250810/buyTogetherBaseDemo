
class Store < ApplicationRecord
  # carrierwave uploader
  mount_uploader :logo, LogoUploader
  mount_uploader :image, StoreImageUploader

  # relationships
  has_many :items
  has_many :purchases

  validates_presence_of :name, :phone, :address, :description
  validates_length_of :name, :maximum => 10 # 最多 10
end
