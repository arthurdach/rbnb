class RemoveEquipmentFromLocations < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :equipment_id
    add_reference :locations, :material, foreign_key: true
  end
end
