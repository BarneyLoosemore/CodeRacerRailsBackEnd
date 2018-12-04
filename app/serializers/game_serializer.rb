class GameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :snippet_id, :time_taken, :accuracy_percentage, :characters_per_min, :user, :snippet
end