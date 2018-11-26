class RenameEquipmentToMaterials < ActiveRecord::Migration[5.2]
  def change
    rename_table :equipment, :materials
  end
end
