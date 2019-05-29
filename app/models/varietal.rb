class Varietal < ApplicationRecord
  has_one :category
  has_one :note
  validates  :name, uniqueness: true
end
