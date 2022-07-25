class PostSerializer < ActiveModel::Serializer
  attributes :title, :summary
  belongs_to :author

  def summary
    "#{self.object.title} - #{self.object.content[0..40]}..."
  end
end

# Author -< Posts > -< Tags