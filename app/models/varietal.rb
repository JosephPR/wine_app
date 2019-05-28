class Varietal < ApplicationRecord
  has_one :category
<<<<<<< HEAD
  # belongs_to :note
=======
  #belongs_to :note
>>>>>>> 7ca551f09be959d31e12991b80d5ba96cc5dbb92
  validates  :name, uniqueness: true
end
