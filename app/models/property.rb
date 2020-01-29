class Property < ApplicationRecord
  has_many_attached :slideshow

  validates :name, presence: true
  validates :price, presence: true
  validates :slideshow, presence: true
  validates :location, presence: true
  validates :type, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :size, presence: true
  validates :owner, presence: true
end
