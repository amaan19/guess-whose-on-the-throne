class CreateGameCharacterTable < ActiveRecord::Migration[4.2]
  def change
    create_table :game_characters do |t|
      t.integer :game_id
      t.integer :character_id
    end
  end
end
