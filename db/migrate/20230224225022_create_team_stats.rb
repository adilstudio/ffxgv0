class CreateTeamStats < ActiveRecord::Migration[7.0]
  def change
    create_table :team_stats do |t|
      t.integer :offsides
      t.float :games_minutes
      t.integer :games_number
      t.string :games_position
      t.float :games_rating
      t.boolean :games_captain
      t.boolean :games_substitute
      t.integer :shots_total
      t.integer :shots_on
      t.integer :goals_total
      t.integer :goals_conceded
      t.integer :goals_assists
      t.integer :goals_saves
      t.integer :passes_total
      t.integer :passes_key
      t.integer :passes_accuracy
      t.integer :tackles_total
      t.integer :tackles_blocks
      t.integer :tackles_interceptions
      t.integer :duels_total
      t.integer :duels_won
      t.integer :dribbles_attempts
      t.integer :dribbles_success
      t.integer :dribbles_past
      t.integer :fouls_drawn
      t.integer :fouls_committed
      t.integer :cards_yellow
      t.integer :cards_red
      t.integer :penalty_won
      t.integer :penalty_commited
      t.integer :penalty_scored
      t.integer :penalty_missed
      t.integer :penalty_saved
      t.integer :player_api_id
      t.integer :team_api_id
      t.integer :fixture_api_id

      t.timestamps
    end
  end
end
