class Recommendation < ApplicationRecord
  #belongs_to :varietal
  validates :url, uniqueness: true
end
