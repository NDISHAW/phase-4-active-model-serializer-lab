class PostSerializer < ActiveModel::Serializer
  attributes :title
  belongs_to :author

  def content
    "#{self.object.title} - #{self.object.description[0..40]}..."
  end
end

# Author -< Posts > -< Tags