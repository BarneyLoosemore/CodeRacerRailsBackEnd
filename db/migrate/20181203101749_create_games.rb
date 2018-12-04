class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :snippet_id
      t.integer :time_taken
      t.integer :accuracy_percentage
      t.integer :characters_per_min

      t.timestamps
    end
  end
end
