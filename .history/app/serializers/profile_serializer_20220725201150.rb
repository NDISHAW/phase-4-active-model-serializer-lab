class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url
  belongs to Author
end
