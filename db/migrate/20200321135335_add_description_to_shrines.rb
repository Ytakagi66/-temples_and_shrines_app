class AddDescriptionToShrines < ActiveRecord::Migration[5.2]
  def change
    add_column :shrines, :description, :string
  end
end
