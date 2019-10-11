class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :detail, :url

  has_many :activities
end
