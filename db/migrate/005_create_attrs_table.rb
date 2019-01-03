class CreateAttrsTable < ActiveRecord::Migration[4.2]
  def change
    create_table :attrs do |t|
      t.string :attribute_type
      t.string :attribute_value
    end
  end
end
