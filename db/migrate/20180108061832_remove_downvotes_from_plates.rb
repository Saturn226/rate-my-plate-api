class RemoveDownvotesFromPlates < ActiveRecord::Migration[5.1]
  def change
    remove_column :plates, :downvote, :integer
  end
end
