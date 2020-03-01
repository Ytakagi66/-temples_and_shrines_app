class CreateUserIds < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ids do |t|
      t.string :name
      t.string :old
      t.string :email
      t.int :password

      t.timestamps
    end
  end
end
