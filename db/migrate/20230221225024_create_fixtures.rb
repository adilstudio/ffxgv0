class CreateFixtures < ActiveRecord::Migration[7.0]
  def change
    create_table :fixtures do |t|
      t.integer :fixture_api_id
      t.string :referee
      t.string :timezone
      t.datetime :date
      t.integer :timestamp
      t.float :periods_first
      t.float :periods_second
      t.integer :venue_id
      t.string :venue_name
      t.string :venue_city
      t.string :status_long
      t.string :status_short
      t.float :status_elapsed
      t.integer :league_api_id
      t.integer :teams_home_api_id

      t.timestamps
    end
  end
end
