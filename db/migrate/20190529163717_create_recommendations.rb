class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.references :varietal
      t.string   :name
      t.string   :region
      t.integer  :year

      t.timestamps
    end
  end
end
