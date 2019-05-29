class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.references :varietal
      t.string   :name
      t.integer  :year
      t.string   :region
      t.float    :score
      t.string   :url
      t.timestamps
    end
  end
end
