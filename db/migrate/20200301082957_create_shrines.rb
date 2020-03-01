class CreateShrines < ActiveRecord::Migration[5.2]
  def change
    create_table :shrines do |t|
      t.string :name
      t.string :adress
      t.string :nearest_station
      t.string :url
      t.string :photo
      t.string :location
      t.string :user_id

      t.timestamps
    end
  end
end
