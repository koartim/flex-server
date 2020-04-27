class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :img_url, :password_digest, :age
end
