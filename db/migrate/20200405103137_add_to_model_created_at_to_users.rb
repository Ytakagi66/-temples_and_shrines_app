class AddToModelCreatedAtToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :to_Model, :datetime
  end
end
