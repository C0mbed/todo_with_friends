class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :items, array: true
      t.string :tags, array: true
      
      t.timestamps
    end
  end
end
