class DropTypesTable < ActiveRecord::Migration[5.2]
  def change
    remove_reference :materials, :type, index: true
  end
end
