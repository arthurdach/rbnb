class AddNameAndCategoryToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :name, :string
    add_column :materials, :category, :string
  end
end
