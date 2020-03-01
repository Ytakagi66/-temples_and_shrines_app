class CreateTempleWordOfMouths < ActiveRecord::Migration[5.2]
  def change
    create_table :temple_word_of_mouths do |t|
      t.string :name
      t.string :article
      t.string :photo
      t.string :user_id
      t.string :temple_id

      t.timestamps
    end
  end
end
