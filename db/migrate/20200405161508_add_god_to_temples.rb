class AddGodToTemples < ActiveRecord::Migration[5.2]
  def change
    add_column :temples, :god, :string
  end
end
