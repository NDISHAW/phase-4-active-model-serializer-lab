class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile
  has_many :post
  def content
    "#{self.object.title} - #{self.object.content[0..40]}..."
  end
end

