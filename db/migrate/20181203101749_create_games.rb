class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :snippet_id
      t.integer :score_placeholder
      t.integer :time_remaining_placeholder

      t.timestamps
    end
  end
end
