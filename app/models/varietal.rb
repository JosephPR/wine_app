class Varietal < ApplicationRecord
  belongs_to :category
  belongs_to :note
  validates  :name, uniqueness: true
end
