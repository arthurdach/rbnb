class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.text :description
      t.boolean :available
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
