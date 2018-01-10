class CreatePlates < ActiveRecord::Migration[5.1]
  def change
    create_table :plates do |t|
      t.string :name
      t.string :description
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end
