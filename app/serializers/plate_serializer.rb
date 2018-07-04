class PlateSerializer < ActiveModel::Serializer
  attributes *Plate.column_names, :upvotes, :downvotes
  def upvotes
    object.upvotes
  end

  def downvotes
    object.downvotes
  end
end
