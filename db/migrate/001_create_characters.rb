class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :culture
      t.string :born
      t.boolean :died
      # t.string :titles
      # t.string :aliases
      t.string :spouse
      # t.string :allegiances
      # t.string :books
      t.string :series_debut
      t.string :final_appearance
      t.integer :number_of_appearances
      t.string :played_by
    end
  end
end
