class AddPriceToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :price, :float
  end
end
