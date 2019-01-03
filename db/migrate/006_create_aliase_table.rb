class CreateAliaseTable < ActiveRecord::Migration[4.2]
  def change
    create_table :aliases do |t|
      t.integer :character_id
      t.string :name
    end
  end
end
