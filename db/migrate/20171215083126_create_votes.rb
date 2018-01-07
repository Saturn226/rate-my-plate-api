class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :user_id
      t.string :integer
      t.string :plate_id
      t.string :integer
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
    end
  end
end
