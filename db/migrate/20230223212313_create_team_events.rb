class CreateTeamEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :team_events do |t|
      t.string :type
      t.string :detail
      t.text :comments
      t.integer :time_elapsed
      t.float :time_extra
      t.integer :fixture_api_id
      t.integer :team_api_id
      t.integer :player_api_id
      t.integer :assist_player_api_id

      t.timestamps
    end
  end
end
