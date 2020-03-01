class CreateShrinesWordOfMouths < ActiveRecord::Migration[5.2]
  def change
    create_table :shrines_word_of_mouths do |t|
      t.string :name
      t.string :article
      t.string :photo
      t.string :user_id
      t.string :shrine_id

      t.timestamps
    end
  end
end
