class CreateVarietals < ActiveRecord::Migration[5.2]
  def change
    create_table :varietals do |t|
      t.string :name
      t.text   :description
      t.string :image_url
      t.references :category

      t.timestamps
    end
  end
end
