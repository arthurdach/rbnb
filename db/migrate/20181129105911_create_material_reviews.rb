class CreateMaterialReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :material_reviews do |t|
      t.integer :rating
      t.text :description
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
