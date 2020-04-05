class AddDetailsToTemples < ActiveRecord::Migration[5.2]
  def change
    add_column :temples, :god, :string
    add_column :temples, :article, :string
    add_column :temples, :goshuin, :string
    add_column :temples, :image, :string    
  end
end
