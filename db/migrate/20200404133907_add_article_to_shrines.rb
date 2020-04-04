class AddArticleToShrines < ActiveRecord::Migration[5.2]
  def change
    add_column :shrines, :article, :string
  end
end
