class RemoveUpvotesFromPlates < ActiveRecord::Migration[5.1]
  def change
    remove_column :plates, :upvote, :integer
  end
end
