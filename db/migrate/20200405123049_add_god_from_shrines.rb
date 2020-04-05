class AddGodFromShrines < ActiveRecord::Migration[5.2]
  def change
    add_column :shrines, :god, :string
  end
end
