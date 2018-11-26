class AddRatingToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :rating, :integer
  end
end
