class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category_id, :url
end
