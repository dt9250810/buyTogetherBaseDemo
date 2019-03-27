
class Store < ApplicationRecord
  # carrierwave uploader
  mount_uploader :logo, LogoUploader
  mount_uploader :image, StoreImageUploader

  has_many :items

  validates_presence_of :name, :phone, :address, :description
  validates_length_of :name, :maximum => 10 # 最多 10
end
