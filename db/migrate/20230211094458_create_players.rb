class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.integer :player_api_id
      t.string :first_name
      t.string :last_name
      t.string :commun_name
      t.string :positioon
      t.integer :team_api_id

      t.timestamps
    end
  end
end
