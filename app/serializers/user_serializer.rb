class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :pic_url, :games
end
