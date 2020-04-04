class RemoveNearestStationFromShrines < ActiveRecord::Migration[5.2]
  def change
    remove_column :shrines, :nearest_station, :string
  end
end
