class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  belongs_to :author

  def summary
    "#{self.object.title} - #{self.object.description[0..40]}..."
  end
end

# Author -< Posts > -< Tags