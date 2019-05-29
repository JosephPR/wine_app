class Note < ApplicationRecord
  belongs_to  :varietal, optional: true
end
