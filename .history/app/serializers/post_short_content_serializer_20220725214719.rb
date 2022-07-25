class PostShortContentSerializer < ActiveModel::Serializer
  attributes :title,:short_content

  def content
    "#{self.object.title} - #{self.object.content[0..40]}..."
  end

end
