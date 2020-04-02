class AddImagesToShrines < ActiveRecord::Migration[5.2]
  def change
    add_column :shrines, :images, :json
  end
end
