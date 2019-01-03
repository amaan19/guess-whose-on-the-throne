class CreateTitleTable < ActiveRecord::Migration[4.2]
  def change
    create_table :titles do |t|
      t.string :title
      t.integer :character_id
    end
  end
end
