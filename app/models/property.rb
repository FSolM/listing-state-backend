class Property < ApplicationRecord
  mount_uploader :image, ImagesUploader

  validates :name, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :property_type, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :size, presence: true
  validates :owner, presence: true
end
