class CreateGameTable < ActiveRecord::Migration[4.2]
  def change
    create_table :games do |t|
      t.integer :score
      t.string :username
    end
  end
end
