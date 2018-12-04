class GameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :snippet_id, :time_taken, :accuracy_percentage, :characters_per_min, :better_than_this_perc_people_snippet_time, :better_than_this_perc_people_chars_per_min, :user, :snippet
end