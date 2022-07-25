class ShortContentSerializer < ActiveModel::Serializer
  attributes :content

  def content
    "#{self.object.title} - #{self.object.description[0..40]}..."
  end

end
