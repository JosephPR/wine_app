class Varietal < ApplicationRecord
  has_one :category
  #belongs_to :note
  validates  :name, uniqueness: true
end
