class AddPhotoToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :photo, :string
  end
end
