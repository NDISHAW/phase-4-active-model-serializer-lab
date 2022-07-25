class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  belongs_to :author
  has

end

# Author -< Posts > -< Tags