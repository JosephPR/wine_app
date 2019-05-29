class Varietal < ApplicationRecord
  has_one :category
  has_one :note
  has_many :recommendations
  validates  :name, uniqueness: true
end
