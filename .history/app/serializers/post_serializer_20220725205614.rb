class PostSerializer < ActiveModel::Serializer
  attributes :title
  belongs_to :author
  attributes :content

  def content
    "#{self.object.title} - #{self.object.description[0..40]}..."
  end
end

# Author -< Posts > -< Tags