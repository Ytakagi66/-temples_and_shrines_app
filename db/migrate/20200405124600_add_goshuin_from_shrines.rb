class AddGoshuinFromShrines < ActiveRecord::Migration[5.2]
  def change
      add_column :shrines, :goshuin, :string
  end
end
