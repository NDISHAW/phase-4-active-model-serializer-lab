class PostShortContentSerializer < ActiveModel::Serializer
  attributes :title,:short_content

  def short_content
    "#{object.content[0..39]}..."
  end

end
