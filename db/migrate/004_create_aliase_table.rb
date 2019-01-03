class CreateAliaseTable < ActiveRecord::Migration[4.2]
  def change
    create_table :aliases do |t|
      t.string :name
      t.integer :character_id
    end
  end
end
