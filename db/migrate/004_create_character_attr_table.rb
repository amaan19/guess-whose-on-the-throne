class CreateCharacterAttrTable < ActiveRecord::Migration[4.2]
  def change
    create_table :character_attribute do |t|
      t.integer :character_id
      t.integer :attribute_id
    end
  end
end
