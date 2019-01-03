class CreateCharacterAllegianceTable < ActiveRecord::Migration[4.2]
  def change
    create_table :character_allegiance do |t|
      t.integer :character_id
      t.integer :allegiance_id
    end
  end
end
