class CreateAllegianceTable < ActiveRecord::Migration[4.2]
  def change
    create_table :allegiances do |t|
      t.string :house
    end
  end
end
