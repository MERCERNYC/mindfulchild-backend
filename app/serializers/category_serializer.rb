class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :detail

  has_many :activities
end
