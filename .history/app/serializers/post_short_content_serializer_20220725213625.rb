class PostShortContentSerializer < ActiveModel::Serializer
  attributes :title,:content

  def content
    "#{self.object.title} - #{self.object.content[0..40]}..."
  end

end
