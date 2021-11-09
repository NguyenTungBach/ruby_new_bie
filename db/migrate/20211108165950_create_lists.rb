class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :ten
      t.text :content

      t.timestamps
    end
  end
end
