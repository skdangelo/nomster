class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocoded_by
  
  validates :name, length: { is: 3 }, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
