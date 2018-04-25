class PlateSerializer < ActiveModel::Serializer
  attributes *Plate.column_names, :upvotes, :downvotes
  def upvotes
    object.upvote_count
  end

  def downvotes
    object.downvote_count
  end
end
