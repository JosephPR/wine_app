class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table   :notes do |t|
      t.references :varietal
      t.string     :sweetness
      t.string     :acidity
      t.string     :tanin
      t.float      :alcohol
      t.string     :body

      t.timestamps
    end
  end
end
