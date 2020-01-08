class CommentSerializer < ActiveModel::Serializer
  attributes :id, :name, :message
end
