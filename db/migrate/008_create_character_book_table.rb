class CreateCharacterBookTable < ActiveRecord::Migration[4.2]
  def change
    create_table :character_book do |t|
      t.integer :character_id
      t.integer :book_id
    end
  end
end
